"""
	Licence: GPLv2
	Author: Jason White
	
	Definition of the five graphical primtives
	* Line
	* Arc
	* Polygon
	* Circle
	* Text
	
	Unless a need is found -
	Graphical primtives should not have user defined attributes.
	
	Those attributes should be delagated to groups in order to
	promote support for amking behaviors apply to any custom shape
	as opposed limiting it to a single primitve.
"""

from group import *

"""
	Line
"""
class line():
	def __init__(self, x1, y1, x2, y2, shape, layer, component, thickness=None, clearance=None):
		self.start=coordinate(x1, y1)
		self.end=coordinate(x2, y2)
		self.shape=shape
		
		self.layer=layer
		self.component=component
		self.design_rules=design_rule(thickness, clearance)
	
	def __repr__(self):
		return self.__str__()
	
	def __str__(self):
		return "<primitives.line x1=%d y1=%d x2=%d y2=%d>" % (self.start.x, self.start.y, self.end.x, self.end.y)
		
"""
	Arc
"""	
class arc():
	def __init__(self, x, y, radius, shape, x_scale, y_scale, start_angle, end_angle, layer, component, thickness=None, clearance=None):
		self.location=coordinate(x, y)
		self.shape=shape
		self.angular_dimesions=angle_pair(start_angle, end_angle)
		self.radius=radius
		self.x_scale=x_scale
		self.y_scale=y_scale
		
		self.layer=layer
		self.component=component
		self.design_rules=design_rule(thickness, clearance)

"""
	Polygons must have at least 3 points
"""
class polygon():
	def __init__(self, x, y, filled, coordinate_list, layer, component, thickness=None, clearance=None):
		self.location=coordinate(x, y)
		self.filled=filled
		
		#expecting [coordinate(x, y), coordinate(x, y), coordinate(x, y)]
		self.points=coordinate_list
		
		self.layer=layer
		self.component=component
		self.design_rules=design_rule(thickness, clearance)
		
"""
	Circle
"""
class circle():
	def __init__(self, x, y, layer, component, thickness=None, clearance=None):
		self.location=coordinate(x, y)
		
		self.layer=layer
		self.component=component
		self.design_rules=design_rule(thickness, clearance)
	
	def __repr__(self):
		return self.__str__()
	
	def __str__(self):
		return "<primitives.circle %s, x=%d y=%d>" % (id(self), self.location.x, self.location.y)
"""
	Text
"""
class text():
	def __init__(self, x, y, text, height, angle, layer, component, thickness=None, clearance=None):
		self.location=coordinate(x, y)
		self.height=height
		self.angle=angle
		self.text=text
		
		self.layer=layer
		self.component=component
		self.design_rules=design_rule(thickness, clearance)
