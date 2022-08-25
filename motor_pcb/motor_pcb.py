# kicad script for generating the motor

import pcbnew

board = pcbnew.GetBoard()

layertable = {}

for i in range(100):
    name = board.GetLayerName(i)
    if name != "BAD INDEX!":
        layertable[name] = i

offset_x = 50 + (150 - 9.5 * (15 + 2/3)) / 2
offset_y = 122


def draw_via(x, y, net):
    v = pcbnew.PCB_VIA(board)
    v.SetPosition(pcbnew.wxPoint(int(1e6 * x), int(1e6 * y)))
    v.SetDrill(int(1e6 * 0.25))
    v.SetWidth(int(1e6 * 0.5))
    net = board.GetNetcodeFromNetname(net)
    v.SetNetCode(net)
    board.Add(v)


def draw_via_rect(net, x1, y1, x2, y2):
    via_size = 0.5
    width = abs(x2 - x1)
    height = abs(y2 - y1)

    w_count = int(width / via_size)
    h_count = int(height / via_size)

    w_offset = (width - w_count * via_size) / 2
    h_offset = (height - h_count * via_size) / 2

    for i in range(w_count):
        for j in range(h_count):
            draw_via(offset_x + min(x1, x2) + w_offset + (i + 0.5) * via_size,
                     offset_y + min(y1, y2) + h_offset + (j + 0.5) * via_size,
                     net)


def draw_rect(layer, net, x1, y1, x2, y2):
    x1 = int(1e6 * (x1 + offset_x))
    x2 = int(1e6 * (x2 + offset_x))
    y1 = int(1e6 * (y1 + offset_y))
    y2 = int(1e6 * (y2 + offset_y))

    motor_net = board.GetNetcodeFromNetname(net)
    area = board.AddArea(None, motor_net, layertable[layer], pcbnew.wxPoint(x1, y1), pcbnew.ZONE_FILL_MODE_POLYGONS)

    outline = area.Outline()

    # outline.Append(x1, y1)
    outline.Append(x2, y1)
    outline.Append(x2, y2)
    outline.Append(x1, y2)


def draw_rects(layers, net, x1, y1, x2, y2):
    for l in layers:
        draw_rect(l, net, x1, y1, x2, y2)


phase_idx = {
    0: "U",
    1: "W",
    2: "V",
}

phase_to_layer = {
    0: "B.Cu",
    1: "In1.Cu",
    2: "In2.Cu",
}

def draw_motor():
    phase_width = 9.5
    end_turn_width = 2
    motor_length = 50
    trace_space = 0.2

    total_end_turn_width = end_turn_width * 3

    trace_total = phase_width / 3
    trace_width = phase_width / 3 - trace_space

    motor_turns = 16

    for i in range(motor_turns):
        phase_start = i * phase_width
        for j in range(3):
            if i == 0 and j == 1:
                continue

            if i == motor_turns - 1 and j != 1:
                continue

            net = f"/{phase_idx[j]}/MOTOR"

            draw_rects(["F.Cu", "In1.Cu", "In2.Cu", "B.Cu"], net,
                      phase_start + trace_total * j,
                      0,
                      phase_start + trace_width + trace_total * j,
                      motor_length)

            # draw poly on top
            draw_rects([phase_to_layer[j]], net,
                       phase_start + trace_total * j,
                       1,
                       phase_start + trace_width + trace_total * j,
                       -total_end_turn_width)

            # draw poly on bottom
            draw_rects([phase_to_layer[j]], net,
                       phase_start + trace_total * j,
                       motor_length - 1,
                       phase_start + trace_width + trace_total * j,
                       motor_length + total_end_turn_width)

            if (i % 2 == 1 and i not in [0, motor_turns - 1]) != (j == 1):
                draw_rects([phase_to_layer[j]], net,
                           phase_start + trace_total * j,
                           -trace_space,
                           phase_start + trace_width + trace_total * (j + 3),
                           -total_end_turn_width)

            else:
                draw_rects([phase_to_layer[j]], net,
                           phase_start + trace_total * j,
                           motor_length + trace_space,
                           phase_start + trace_width + trace_total * (j + 3),
                           motor_length + total_end_turn_width)

            draw_via_rect(net,
                          phase_start + trace_total * j,
                          0,
                          phase_start + trace_width + trace_total * j,
                          5)
            draw_via_rect(net,
                          phase_start + trace_total * j,
                          motor_length,
                          phase_start + trace_width + trace_total * j,
                          motor_length - 5)


draw_motor()

pcbnew.Refresh()
