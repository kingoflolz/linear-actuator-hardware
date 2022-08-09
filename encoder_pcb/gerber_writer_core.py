#------------------------------------------------------------------------------
# Gerber Writer Core
#------------------------------------------------------------------------------
#
# Author: Jason White
# Licence: GPLv2
#
# a low level gerber RS274X writer
# outputs a gerber file in MM mode
# with positive polarity
#
# Supports user creation of:
#  * Polygons (Suitable for most abriatary shapes)
#  * Lines (Suitable for lines, circles, and arcs, must supply correct aperture number)
#
# These two features are enough to define the all of layers of nearly any PCB board
#
# all coodinates expected to be in micrometers (6 zeros, 1mm=1000000um)
# see function test_gerber_writer_core() for an example of how to use
#

class aperture:
	def __init__(self, type, size):
		self.type=type #ie "C" is a circle, "R" is a square
		self.size=size

#------------------------------------------------------------------------------
# Example Usage
#------------------------------------------------------------------------------
#This produces a gerber with a 0.5mm track in a check mark shape
#and a triangular polygon
#
def test_gerber_writer_core():
	apertures=[aperture("C", 0.5), aperture("R", 0.25)]

	f=open("export.gbr", "w")

	write_start(f)
	write_apertures(f, apertures)

	write_polyline(f, 0, [
		[1000000,2000000],
		[2000000,1000000],
		[4000000,3000000]])
	
	write_polygon(f, 0, 0, [
		[1000000,4000000],
		[2000000,3000000],
		[4000000,5000000]])
	
	write_polyline(f, 1, [
		[500000,6000000],
		[1000000,6000000],
		[2000000,8000000],
		[1500000,9000000],
		[1000000,8000000],
		[2000000,6000000],
		[2500000,6000000]])
	
	write_end(f)

#------------------------------------------------------------------------------
# Writer definition
#------------------------------------------------------------------------------
def write_start(f):
	""" Coordinate format specification:
		Leading
		zero's
		omitted
		Absolute coordinates
		3 digits in the integer part
		6 digits in the fractional part
	"""
	f.write("%FSLAX36Y36*%\n")

	# Unit set to mm
	f.write("%MOMM*%\n")

	"""
		Start a new level with dark polarity. This command
		confirms the default and makes the intention
		unequivocal.
	"""
	f.write("%LPD*%\n")

def write_apertures(f, apertures):
	#define a default 0.001mm aperture at D11
	#D11 is used for polygons
	f.write("%ADD11C,0.00100*%\n")

	#define all user defined apertures from D12 and up
	for i, a in enumerate(apertures):
		if a.type!="C":
			#Assume square if the aperture is not a circle, it is square
			f.write("%%ADD%d%s,%0.5fX%0.5f*%%\n" % (12+i, a.type, a.size, a.size))
		else:
			f.write("%%ADD%d%s,%0.5f*%%\n" % (12+i, a.type, a.size))
	
#A minimum of two points must be supplied
#
#The reason polyline breaks the line into segments is that
#Section 4.5.1 of the Ucamco Gerber Specification states:
#
#	"Self-intersecting contours are not allowed.
#	 Segments can not cross, overlap or touch"
#
#By using seperate contours (line segments), this rule can not be violated
#so it wont be an issue when it is read in another program

def write_polyline(f, aperture_number, point_list):
	#Select aperture specifed
	f.write("G54D%d*\n" % (aperture_number+12) )

	for i in range(len(point_list)-1):
		write_line(f, aperture_number, point_list[i], point_list[i+1])
		
def write_line(f, aperture_number, start_point, end_point):
	#Select aperture specifed
	f.write("G54D%d*\n" % (aperture_number+12))
	
	#write the line segment
	f.write("X%06dY%06dD02*\n" % (start_point[0], start_point[1]))
	f.write("X%06dY%06dD01*\n" % (end_point[0], end_point[1]))


def write_polygon(f, x, y, point_list):
	#Select aperture, D11, the default used for polygons
	f.write("G54D11*\n")
	
	#enter region (fill mode)
	f.write("G36*\n")
	
	#for each point in the list, write the X Y coordinates expected
	#First point gets D02 (end/new line)
	#every other point gets a D01 (continue line)
	for index, point in enumerate(point_list):
		if index==0:
			f.write("X%06dY%06dD02*\n" % (point[0]+x, point[1]+y))
			continue
		f.write("X%06dY%06dD01*\n" % (point[0]+x, point[1]+y))

	#insert last point
	#rejoin to first supplied point
	#gets a D02 (end line)
	f.write("X%06dY%06dD02*\n" % (point_list[0][0]+x, point_list[0][1]+y))
	
	#exit region (fill) mode
	f.write("G37*\n");

def write_end(f):	
	# end of file
	f.write("M02*\n")
