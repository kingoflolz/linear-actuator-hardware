#------------------------------------------------------------------------------
# Gerber Writer - A Wrapper for Gerber Writer Core
#------------------------------------------------------------------------------
#
# Author: Jason White
# Licence: GPLv2
#
# a high-ish level gerber RS274X writer
# Takes in the 5 graphical primitives and
# outputs a gerber file in MM mode
# with positive polarity (do not feed 
# groups to the gerber writer please)
#
# Apertures are taken care of here.
#
# all coodinates expected to be integer and in micrometers (6 zeros, 1mm=1000000um)
# but thickness and is expected in milimeters, floating point
#
# check out test_gerber_writer() for an example of how to make it work
#

from math import pi, radians, sin, cos

from gerber_writer_core import *
from primitives import *
from symbols import *


class gerber_writer:
    def __init__(self, filename, primitives=[]):
        self.filename = filename
        self.f = open(filename, "w")
        self.apertures = []
        self.primitives = primitives

    def write(self):
        write_start(self.f)

        self.define_apertures()

        write_apertures(self.f, self.apertures)

        self.write_primitives()

        write_end(self.f)

    def write_primitives(self):
        for i, p in enumerate(self.primitives):
            self.write_primitive(i, p)

    def write_primitive(self, i, p):
        if isinstance(p, line):
            write_line(self.f, p.aperture, [p.start.x, p.start.y], [p.end.x, p.end.y])
        elif isinstance(p, arc):
            self.write_arc(p)
        elif isinstance(p, circle):
            write_line(self.f, p.aperture, [p.location.x, p.location.y], [p.location.x, p.location.y])
        elif isinstance(p, text):
            self.write_text(p)
        elif isinstance(p, polygon):
            write_polygon(self.f, p.location.x, p.location.y, p.points)
        else:
            print("Error unsupported primitive %s" % p)

    def rotate_point(self, point, angle, offset=(0.0, 0.0)):
        angle = radians(angle)

        delta_x = point[0]
        delta_y = point[1]

        x = offset[0] + (cos(angle) * delta_x) - (sin(angle) * delta_y)
        y = offset[1] + (sin(angle) * delta_x) + (cos(angle) * delta_y)
        return (x, y)

    def write_text(self, p):
        offset = 0
        center = (p.location.x, p.location.y)

        for char in p.text:

            for i in SYMBOLS[char].elements:
                start_point = (offset + i.x1 * p.height, i.y1 * p.height)
                end_point = (offset + i.x2 * p.height, i.y2 * p.height)

                start_location = self.rotate_point(start_point, p.angle, center)
                end_location = self.rotate_point(end_point, p.angle, center)

                write_line(self.f, p.aperture, start_location, end_location)

            offset += SYMBOLS[char].size * p.height

    def limit_range(self, value, minimum, maximum):
        if value < minimum:
            return minimum
        if value > maximum:
            return maximum

        return value

    def write_arc(self, p):
        x = p.location.x
        y = p.location.y
        x_scale = abs(p.x_scale)  # self.limit_range(p.x_scale, 0, 1)
        y_scale = abs(p.y_scale)  # self.limit_range(p.y_scale, 0, 1)

        start_angle = p.angular_dimesions.x  # self.limit_range(p.angular_dimesions.x, 0 ,360)
        end_angle = p.angular_dimesions.y  # self.limit_range(p.angular_dimesions.y, 0, 360)

        if start_angle > end_angle:
            temp = start_angle
            start_angle = end_angle
            end_angle = start_angle

        delta = end_angle - start_angle
        radius = p.radius

        # radius is in micrometers
        length = (delta / 360.0) * (2 * pi * radius * 0.000001)

        # One segment for every 0.1mm
        segments = int(round(length * 10) + 1)

        # compute delta per segment
        delta /= float(segments)

        current_angle = float(start_angle)
        for i in range(segments):
            x1 = x + round(x_scale * cos(radians(current_angle)) * radius)
            y1 = y + round(y_scale * sin(radians(current_angle)) * radius)

            current_angle += delta

            x2 = x + round(x_scale * cos(radians(current_angle)) * radius)
            y2 = y + round(y_scale * sin(radians(current_angle)) * radius)

            write_line(self.f, p.aperture, (x1, y1), (x2, y2))

    def define_apertures(self):
        for i, p in enumerate(self.primitives):
            self.define_aperture(i, p)

    def define_aperture(self, i, p):
        # All other types (line, arc, circle, text) use custom width apertures
        if isinstance(p, polygon):
            return

        a = aperture("C", p.design_rules.thickness)
        if isinstance(p, line):
            a.type = p.shape

        p.aperture = self.check_duplicate(a)

        if type(p.aperture) != int:
            p.aperture = len(self.apertures)
            self.apertures.append(a)

    def check_duplicate(self, aperture):
        for i, a in enumerate(self.apertures):

            if a.type == aperture.type and a.size == aperture.size:
                return i
        return False


def rect_outline(x1, y1, x2, y2):
    return [line(x1 * 1e6, y1 * 1e6, x1 * 1e6, y2 * 1e6, "C", 0, "copper", thickness=0.1, clearance=None),
            line(x1 * 1e6, y2 * 1e6, x2 * 1e6, y2 * 1e6, "C", 0, "copper", thickness=0.1, clearance=None),
            line(x2 * 1e6, y2 * 1e6, x2 * 1e6, y1 * 1e6, "C", 0, "copper", thickness=0.1, clearance=None),
            line(x2 * 1e6, y1 * 1e6, x1 * 1e6, y1 * 1e6, "C", 0, "copper", thickness=0.1, clearance=None)]


def rect(x1, y1, x2, y2):
    return polygon(0, 0, 1, [(x1 * 1e6, y1 * 1e6), (x1 * 1e6, y2 * 1e6), (x2 * 1e6, y2 * 1e6), (x2 * 1e6, y1 * 1e6)], 0,
                   "copper", thickness=0.0, clearance=None)


def rect_center(x, y, w, h):
    return rect(x - w / 2, y - h / 2, x + w / 2, y + h / 2)


def strip(x1, x2, y_center, h, n, offset=0):
    out = []
    w = abs(x1 - x2) / n / 2
    for i in range(n):
        out.append(rect_center(w * (i * 2 + 0.5 + (offset * 2)), y_center, w, h))

    return out


def out_of_phase_strip(x1, x2, y_center, h, n, phase_offset=(0, 0.5)):
    y_offset = 0.1
    return [
        *strip(x1, x2, y_center + h / 4 + y_offset, h / 2, n, offset=phase_offset[0]),
        *strip(x1, x2, y_center - h / 4 - y_offset, h / 2, n, offset=phase_offset[1]),
    ]


def writer_encoder():
    writer = gerber_writer("output/encoder.gko")

    writer.primitives = [
        *rect_outline(-5, -18, 305, 18)
    ]

    writer.write()

    writer = gerber_writer("output/encoder.gbl")

    writer.primitives = [
        rect(-5, -18, 305, 18)
    ]

    writer.write()

    alignment = 18 - 12.375

    writer = gerber_writer("output/encoder.gts")

    writer.primitives = [
        rect(-5, alignment + 3.5 * 0 + 1.15, 305, alignment + 3.5 * 0 - 1.15),
        rect(-5, alignment + 3.5 * 1 + 1.15, 305, alignment + 3.5 * 1 - 1.15),
        rect(-5, alignment + 3.5 * 2 + 1.15, 305, alignment + 3.5 * 2 - 1.15),
        rect(-5, alignment + 3.5 * 3 + 1.15, 305, alignment + 3.5 * 3 - 1.15),

        rect(-5, -alignment - 3.5 * 0 + 1.15, 305, -alignment - 3.5 * 0 - 1.15),
        rect(-5, -alignment - 3.5 * 1 + 1.15, 305, -alignment - 3.5 * 1 - 1.15),
        rect(-5, -alignment - 3.5 * 2 + 1.15, 305, -alignment - 3.5 * 2 - 1.15),
        rect(-5, -alignment - 3.5 * 3 + 1.15, 305, -alignment - 3.5 * 3 - 1.15),
    ]

    writer.write()

    writer = gerber_writer("output/encoder.gbs")

    writer.primitives = [
        rect(-5, alignment + 3.5 * 0 + 1.6, 305, alignment + 3.5 * 0 - 1.6),
        rect(-5, alignment + 3.5 * 1 + 1.6, 305, alignment + 3.5 * 1 - 1.6),
        rect(-5, alignment + 3.5 * 2 + 1.6, 305, alignment + 3.5 * 2 - 1.6),
        rect(-5, alignment + 3.5 * 3 + 1.6, 305, alignment + 3.5 * 3 - 1.6),

        rect(-5, -alignment - 3.5 * 0 + 1.6, 305, -alignment - 3.5 * 0 - 1.6),
        rect(-5, -alignment - 3.5 * 1 + 1.6, 305, -alignment - 3.5 * 1 - 1.6),
        rect(-5, -alignment - 3.5 * 2 + 1.6, 305, -alignment - 3.5 * 2 - 1.6),
        rect(-5, -alignment - 3.5 * 3 + 1.6, 305, -alignment - 3.5 * 3 - 1.6),
    ]

    writer.write()

    writer = gerber_writer("output/encoder.gtl")

    out_of_phase_strip(0, 300, - alignment - 3.5 * 0, 3, 128, phase_offset=(0, 0.5))

    writer.primitives = [
        *out_of_phase_strip(0, 300, alignment + 3.5 * 0, 2, 256, phase_offset=(0, 0.5)),
        *out_of_phase_strip(0, 300, alignment + 3.5 * 1, 2, 256, phase_offset=(0.25, 0.75)),
        *out_of_phase_strip(0, 300, alignment + 3.5 * 2, 2, 240, phase_offset=(0, 0.25)),
        *out_of_phase_strip(0, 300, alignment + 3.5 * 3, 2, 255, phase_offset=(0, 0.25)),

        *out_of_phase_strip(0, 300, - alignment - 3.5 * 0, 2, 128, phase_offset=(0, 0.5)),
        *out_of_phase_strip(0, 300, - alignment - 3.5 * 1, 2, 128, phase_offset=(0.25, 0.75)),
        *out_of_phase_strip(0, 300, - alignment - 3.5 * 2, 2, 112, phase_offset=(0, 0.25)),
        *out_of_phase_strip(0, 300, - alignment - 3.5 * 3, 2, 129, phase_offset=(0, 0.25)),
    ]

    writer.write()

    writer = gerber_writer("output/encoder.gbl")

    writer.primitives = [
        *out_of_phase_strip(0, 300, alignment + 3.5 * 0, 3, 256, phase_offset=(0, 0.5)),
        *out_of_phase_strip(0, 300, alignment + 3.5 * 1, 3, 256, phase_offset=(0.25, 0.75)),
        *out_of_phase_strip(0, 300, alignment + 3.5 * 2, 3, 240, phase_offset=(0, 0.25)),
        *out_of_phase_strip(0, 300, alignment + 3.5 * 3, 3, 255, phase_offset=(0, 0.25)),

        *out_of_phase_strip(0, 300, - alignment - 3.5 * 0, 3, 128, phase_offset=(0, 0.5)),
        *out_of_phase_strip(0, 300, - alignment - 3.5 * 1, 3, 128, phase_offset=(0.25, 0.75)),
        *out_of_phase_strip(0, 300, - alignment - 3.5 * 2, 3, 112, phase_offset=(0, 0.25)),
        *out_of_phase_strip(0, 300, - alignment - 3.5 * 3, 3, 129, phase_offset=(0, 0.25)),
    ]

    writer.write()


if __name__ == "__main__":
    writer_encoder()
