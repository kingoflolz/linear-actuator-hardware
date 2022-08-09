class symbol_line:
	def __init__(self, x1, y1, x2, y2):
		self.x1= x1*250
		self.y1= -y1*250+1000000
		self.y2= -y2*250+1000000
		self.x2= x2*250
		
class symbol:
	def __init__(self, character, size, elements):
		self.character=character
		self.size=size*800
		self.elements=elements
	
SYMBOLS={}
	
def add_symbol(character, size, elements):
	s=symbol(character, size, elements)
	SYMBOLS[character]=s

add_symbol(' ', 1800, [])

add_symbol('!', 1200, [
	symbol_line(0, 4500, 0, 5000),
	symbol_line(0, 1000, 0, 3500)])

add_symbol('"', 1200, [
	symbol_line(0, 1000, 0, 2000),
	symbol_line(1000, 1000, 1000, 2000)])

add_symbol('#', 1200, [
	symbol_line(0, 3500, 2000, 3500),
	symbol_line(0, 2500, 2000, 2500),
	symbol_line(1500, 2000, 1500, 4000),
	symbol_line(500, 2000, 500, 4000)])

add_symbol('$', 1200, [
	symbol_line(1500, 1500, 2000, 2000),
	symbol_line(500, 1500, 1500, 1500),
	symbol_line(0, 2000, 500, 1500),
	symbol_line(0, 2000, 0, 2500),
	symbol_line(0, 2500, 500, 3000),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(2000, 3500, 2000, 4000),
	symbol_line(1500, 4500, 2000, 4000),
	symbol_line(500, 4500, 1500, 4500),
	symbol_line(0, 4000, 500, 4500),
	symbol_line(1000, 1000, 1000, 5000)])

add_symbol('%', 1200, [
	symbol_line(0, 1500, 0, 2000),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1000, 1000),
	symbol_line(1000, 1000, 1500, 1500),
	symbol_line(1500, 1500, 1500, 2000),
	symbol_line(1000, 2500, 1500, 2000),
	symbol_line(500, 2500, 1000, 2500),
	symbol_line(0, 2000, 500, 2500),
	symbol_line(0, 5000, 4000, 1000),
	symbol_line(3500, 5000, 4000, 4500),
	symbol_line(4000, 4000, 4000, 4500),
	symbol_line(3500, 3500, 4000, 4000),
	symbol_line(3000, 3500, 3500, 3500),
	symbol_line(2500, 4000, 3000, 3500),
	symbol_line(2500, 4000, 2500, 4500),
	symbol_line(2500, 4500, 3000, 5000),
	symbol_line(3000, 5000, 3500, 5000)])

add_symbol('&', 1200, [
	symbol_line(0, 4500, 500, 5000),
	symbol_line(0, 1500, 0, 2500),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(0, 3500, 1500, 2000),
	symbol_line(500, 5000, 1000, 5000),
	symbol_line(1000, 5000, 2000, 4000),
	symbol_line(0, 2500, 2500, 5000),
	symbol_line(500, 1000, 1000, 1000),
	symbol_line(1000, 1000, 1500, 1500),
	symbol_line(1500, 1500, 1500, 2000),
	symbol_line(0, 3500, 0, 4500)])

add_symbol("'", 1200, [
	symbol_line(0, 2000, 1000, 1000)])

add_symbol('(', 1200, [
	symbol_line(0, 4500, 500, 5000),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(0, 1500, 0, 4500)])

add_symbol(')', 1200, [
	symbol_line(0, 1000, 500, 1500),
	symbol_line(500, 1500, 500, 4500),
	symbol_line(0, 5000, 500, 4500)])

add_symbol('*', 1200, [
	symbol_line(0, 2000, 2000, 4000),
	symbol_line(0, 4000, 2000, 2000),
	symbol_line(0, 3000, 2000, 3000),
	symbol_line(1000, 2000, 1000, 4000)])

add_symbol('+', 1200, [
	symbol_line(0, 3000, 2000, 3000),
	symbol_line(1000, 2000, 1000, 4000)])

add_symbol(', ', 1200, [
	symbol_line(0, 6000, 1000, 5000)])

add_symbol('-', 1200, [
	symbol_line(0, 3000, 2000, 3000)])

add_symbol('.', 1200, [
	symbol_line(0, 5000, 500, 5000)])

add_symbol('/', 1200, [
	symbol_line(0, 4500, 3000, 1500)])

add_symbol('0', 1200, [
	symbol_line(0, 4500, 500, 5000),
	symbol_line(0, 1500, 0, 4500),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(2000, 1500, 2000, 4500),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(0, 4000, 2000, 2000)])

add_symbol('1', 1200, [
	symbol_line(0, 1800, 800, 1000),
	symbol_line(800, 1000, 800, 5000),
	symbol_line(0, 5000, 1500, 5000)])

add_symbol('2', 1200, [
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 2000, 1000),
	symbol_line(2000, 1000, 2500, 1500),
	symbol_line(2500, 1500, 2500, 2500),
	symbol_line(0, 5000, 2500, 2500),
	symbol_line(0, 5000, 2500, 5000)])

add_symbol('3', 1200, [
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 2800, 1500, 2800),
	symbol_line(2000, 1500, 2000, 2300),
	symbol_line(2000, 3300, 2000, 4500),
	symbol_line(2000, 3300, 1500, 2800),
	symbol_line(2000, 2300, 1500, 2800)])

add_symbol('4', 1200, [
	symbol_line(0, 3500, 2000, 1000),
	symbol_line(0, 3500, 2500, 3500),
	symbol_line(2000, 1000, 2000, 5000)])

add_symbol('5', 1200, [
	symbol_line(0, 1000, 2000, 1000),
	symbol_line(0, 1000, 0, 3000),
	symbol_line(0, 3000, 500, 2500),
	symbol_line(500, 2500, 1500, 2500),
	symbol_line(1500, 2500, 2000, 3000),
	symbol_line(2000, 3000, 2000, 4500),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(0, 4500, 500, 5000)])

add_symbol('6', 1200, [
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(0, 1500, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(1500, 2800, 2000, 3300),
	symbol_line(0, 2800, 1500, 2800),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(2000, 3300, 2000, 4500)])

add_symbol('7', 1200, [
	symbol_line(500, 5000, 2500, 1000),
	symbol_line(0, 1000, 2500, 1000)])

add_symbol('8', 1200, [
	symbol_line(0, 4500, 500, 5000),
	symbol_line(0, 3700, 0, 4500),
	symbol_line(0, 3700, 700, 3000),
	symbol_line(700, 3000, 1300, 3000),
	symbol_line(1300, 3000, 2000, 3700),
	symbol_line(2000, 3700, 2000, 4500),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(0, 2300, 700, 3000),
	symbol_line(0, 1500, 0, 2300),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(2000, 1500, 2000, 2300),
	symbol_line(1300, 3000, 2000, 2300)])

add_symbol('9', 1200, [
	symbol_line(500, 5000, 2000, 3000),
	symbol_line(2000, 1500, 2000, 3000),
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(0, 1500, 0, 2500),
	symbol_line(0, 2500, 500, 3000),
	symbol_line(500, 3000, 2000, 3000)])

add_symbol(':', 1200, [
	symbol_line(0, 2500, 500, 2500),
	symbol_line(0, 3500, 500, 3500)])

add_symbol(';', 1200, [
	symbol_line(0, 5000, 1000, 4000),
	symbol_line(1000, 2500, 1000, 3000)])

add_symbol('<', 1200, [
	symbol_line(0, 3000, 1000, 2000),
	symbol_line(0, 3000, 1000, 4000)])

add_symbol('=', 1200, [
	symbol_line(0, 2500, 2000, 2500),
	symbol_line(0, 3500, 2000, 3500)])

add_symbol('>', 1200, [
	symbol_line(0, 2000, 1000, 3000),
	symbol_line(0, 4000, 1000, 3000)])

add_symbol('?', 1200, [
	symbol_line(1000, 3000, 1000, 3500),
	symbol_line(1000, 4500, 1000, 5000),
	symbol_line(0, 1500, 0, 2000),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(2000, 1500, 2000, 2000),
	symbol_line(1000, 3000, 2000, 2000)])

add_symbol('@', 1200, [
	symbol_line(0, 1000, 0, 4000),
	symbol_line(0, 4000, 1000, 5000),
	symbol_line(1000, 5000, 4000, 5000),
	symbol_line(5000, 3500, 5000, 1000),
	symbol_line(5000, 1000, 4000, 0),
	symbol_line(4000, 0, 1000, 0),
	symbol_line(1000, 0, 0, 1000),
	symbol_line(1500, 2000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(2000, 3500, 3000, 3500),
	symbol_line(3000, 3500, 3500, 3000),
	symbol_line(3500, 3000, 4000, 3500),
	symbol_line(3500, 3000, 3500, 1500),
	symbol_line(3500, 2000, 3000, 1500),
	symbol_line(2000, 1500, 3000, 1500),
	symbol_line(2000, 1500, 1500, 2000),
	symbol_line(4000, 3500, 5000, 3500)])

add_symbol('A', 1200, [
	symbol_line(0, 2000, 0, 5000),
	symbol_line(0, 2000, 700, 1000),
	symbol_line(700, 1000, 1800, 1000),
	symbol_line(1800, 1000, 2500, 2000),
	symbol_line(2500, 2000, 2500, 5000),
	symbol_line(0, 3000, 2500, 3000)])

add_symbol('B', 1200, [
	symbol_line(0, 5000, 2000, 5000),
	symbol_line(2000, 5000, 2500, 4500),
	symbol_line(2500, 3300, 2500, 4500),
	symbol_line(2000, 2800, 2500, 3300),
	symbol_line(500, 2800, 2000, 2800),
	symbol_line(500, 1000, 500, 5000),
	symbol_line(0, 1000, 2000, 1000),
	symbol_line(2000, 1000, 2500, 1500),
	symbol_line(2500, 1500, 2500, 2300),
	symbol_line(2000, 2800, 2500, 2300)])

add_symbol('C', 1200, [
	symbol_line(700, 5000, 2000, 5000),
	symbol_line(0, 4300, 700, 5000),
	symbol_line(0, 1700, 0, 4300),
	symbol_line(0, 1700, 700, 1000),
	symbol_line(700, 1000, 2000, 1000)])

add_symbol('D', 1200, [
	symbol_line(500, 1000, 500, 5000),
	symbol_line(1800, 1000, 2500, 1700),
	symbol_line(2500, 1700, 2500, 4300),
	symbol_line(1800, 5000, 2500, 4300),
	symbol_line(0, 5000, 1800, 5000),
	symbol_line(0, 1000, 1800, 1000)])

add_symbol('E', 1200, [
	symbol_line(0, 2800, 1500, 2800),
	symbol_line(0, 5000, 2000, 5000),
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 1000, 2000, 1000)])

add_symbol('F', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 1000, 2000, 1000),
	symbol_line(0, 2800, 1500, 2800)])

add_symbol('G', 1200, [
	symbol_line(2000, 1000, 2500, 1500),
	symbol_line(500, 1000, 2000, 1000),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(0, 1500, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 2000, 5000),
	symbol_line(2000, 5000, 2500, 4500),
	symbol_line(2500, 3500, 2500, 4500),
	symbol_line(2000, 3000, 2500, 3500),
	symbol_line(1000, 3000, 2000, 3000)])

add_symbol('H', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(2500, 1000, 2500, 5000),
	symbol_line(0, 3000, 2500, 3000)])

add_symbol('I', 1200, [
	symbol_line(0, 1000, 1000, 1000),
	symbol_line(500, 1000, 500, 5000),
	symbol_line(0, 5000, 1000, 5000)])

add_symbol('J', 1200, [
	symbol_line(700, 1000, 1500, 1000),
	symbol_line(1500, 1000, 1500, 4500),
	symbol_line(1000, 5000, 1500, 4500),
	symbol_line(500, 5000, 1000, 5000),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(0, 4500, 0, 4000)])

add_symbol('K', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 3000, 2000, 1000),
	symbol_line(0, 3000, 2000, 5000)])

add_symbol('L', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 5000, 2000, 5000)])

add_symbol('M', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 1000, 1500, 3000),
	symbol_line(1500, 3000, 3000, 1000),
	symbol_line(3000, 1000, 3000, 5000)])

add_symbol('N', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 1000, 2500, 5000),
	symbol_line(2500, 1000, 2500, 5000)])

add_symbol('O', 1200, [
	symbol_line(0, 1500, 0, 4500),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(2000, 1500, 2000, 4500),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(0, 4500, 500, 5000)])

add_symbol('P', 1200, [
	symbol_line(500, 1000, 500, 5000),
	symbol_line(0, 1000, 2000, 1000),
	symbol_line(2000, 1000, 2500, 1500),
	symbol_line(2500, 1500, 2500, 2500),
	symbol_line(2000, 3000, 2500, 2500),
	symbol_line(500, 3000, 2000, 3000)])

add_symbol('Q', 1200, [
	symbol_line(0, 1500, 0, 4500),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1500, 1000),
	symbol_line(1500, 1000, 2000, 1500),
	symbol_line(2000, 1500, 2000, 4000),
	symbol_line(1000, 5000, 2000, 4000),
	symbol_line(500, 5000, 1000, 5000),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(1000, 3500, 2000, 5000)])

add_symbol('R', 1200, [
	symbol_line(0, 1000, 2000, 1000),
	symbol_line(2000, 1000, 2500, 1500),
	symbol_line(2500, 1500, 2500, 2500),
	symbol_line(2000, 3000, 2500, 2500),
	symbol_line(500, 3000, 2000, 3000),
	symbol_line(500, 1000, 500, 5000),
	symbol_line(1300, 3000, 2500, 5000)])

add_symbol('S', 1200, [
	symbol_line(2000, 1000, 2500, 1500),
	symbol_line(500, 1000, 2000, 1000),
	symbol_line(0, 1500, 500, 1000),
	symbol_line(0, 1500, 0, 2500),
	symbol_line(0, 2500, 500, 3000),
	symbol_line(500, 3000, 2000, 3000),
	symbol_line(2000, 3000, 2500, 3500),
	symbol_line(2500, 3500, 2500, 4500),
	symbol_line(2000, 5000, 2500, 4500),
	symbol_line(500, 5000, 2000, 5000),
	symbol_line(0, 4500, 500, 5000)])

add_symbol('T', 1200, [
	symbol_line(0, 1000, 2000, 1000),
	symbol_line(1000, 1000, 1000, 5000)])

add_symbol('U', 1200, [
	symbol_line(0, 1000, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(2000, 1000, 2000, 4500)])

add_symbol('V', 1200, [
	symbol_line(0, 1000, 1000, 5000),
	symbol_line(1000, 5000, 2000, 1000)])

add_symbol('W', 1200, [
	symbol_line(0, 1000, 0, 3000),
	symbol_line(0, 3000, 500, 5000),
	symbol_line(500, 5000, 1500, 3000),
	symbol_line(1500, 3000, 2500, 5000),
	symbol_line(2500, 5000, 3000, 3000),
	symbol_line(3000, 3000, 3000, 1000)])

add_symbol('X', 1200, [
	symbol_line(0, 5000, 2500, 1000),
	symbol_line(0, 1000, 2500, 5000)])

add_symbol('Y', 1200, [
	symbol_line(0, 1000, 1000, 3000),
	symbol_line(1000, 3000, 2000, 1000),
	symbol_line(1000, 3000, 1000, 5000)])

add_symbol('Z', 1200, [
	symbol_line(0, 1000, 2500, 1000),
	symbol_line(0, 5000, 2500, 1000),
	symbol_line(0, 5000, 2500, 5000)])

add_symbol('(', 1200, [
	symbol_line(0, 1000, 500, 1000),
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 5000, 500, 5000)])

add_symbol('\\', 1200, [
	symbol_line(0, 1500, 3000, 4500)])

add_symbol(')', 1200, [
	symbol_line(0, 1000, 500, 1000),
	symbol_line(500, 1000, 500, 5000),
	symbol_line(0, 5000, 500, 5000)])

add_symbol('^', 1200, [
	symbol_line(0, 1500, 500, 1000),
	symbol_line(500, 1000, 1000, 1500)])

add_symbol('_', 1200, [
	symbol_line(0, 5000, 2000, 5000)])

add_symbol('a', 1200, [
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(0, 3500, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(2000, 3000, 2000, 4500),
	symbol_line(2000, 4500, 2500, 5000),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500)])

add_symbol('b', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(2000, 3500, 2000, 4500),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(0, 3500, 500, 3000)])

add_symbol('c', 1200, [
	symbol_line(500, 3000, 2000, 3000),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(0, 3500, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 2000, 5000)])

add_symbol('d', 1200, [
	symbol_line(2000, 1000, 2000, 5000),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(0, 3500, 0, 4500),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500)])

add_symbol('e', 1200, [
	symbol_line(500, 5000, 2000, 5000),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(0, 3500, 0, 4500),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(0, 4000, 2000, 4000),
	symbol_line(2000, 4000, 2000, 3500)])

add_symbol('f', 1000, [
	symbol_line(500, 1500, 500, 5000),
	symbol_line(500, 1500, 1000, 1000),
	symbol_line(1000, 1000, 1500, 1000),
	symbol_line(0, 3000, 1000, 3000)])

add_symbol('g', 1200, [
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(0, 3500, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(0, 6000, 500, 6500),
	symbol_line(500, 6500, 1500, 6500),
	symbol_line(1500, 6500, 2000, 6000),
	symbol_line(2000, 3000, 2000, 6000)])

add_symbol('h', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(2000, 3500, 2000, 5000)])

add_symbol('i', 1000, [
	symbol_line(0, 2000, 0, 2100),
	symbol_line(0, 3500, 0, 5000)])

add_symbol('j', 1000, [
	symbol_line(500, 2000, 500, 2100),
	symbol_line(500, 3500, 500, 6000),
	symbol_line(0, 6500, 500, 6000)])

add_symbol('k', 1200, [
	symbol_line(0, 1000, 0, 5000),
	symbol_line(0, 3500, 1500, 5000),
	symbol_line(0, 3500, 1000, 2500)])

add_symbol('l', 1000, [
	symbol_line(0, 1000, 0, 4500),
	symbol_line(0, 4500, 500, 5000)])

add_symbol('m', 1200, [
	symbol_line(500, 3500, 500, 5000),
	symbol_line(500, 3500, 1000, 3000),
	symbol_line(1000, 3000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(2000, 3500, 2000, 5000),
	symbol_line(2000, 3500, 2500, 3000),
	symbol_line(2500, 3000, 3000, 3000),
	symbol_line(3000, 3000, 3500, 3500),
	symbol_line(3500, 3500, 3500, 5000),
	symbol_line(0, 3000, 500, 3500)])

add_symbol('n', 1200, [
	symbol_line(500, 3500, 500, 5000),
	symbol_line(500, 3500, 1000, 3000),
	symbol_line(1000, 3000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(2000, 3500, 2000, 5000),
	symbol_line(0, 3000, 500, 3500)])

add_symbol('o', 1200, [
	symbol_line(0, 3500, 0, 4500),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(2000, 3500, 2000, 4500),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(0, 4500, 500, 5000)])

add_symbol('p', 1200, [
	symbol_line(500, 3500, 500, 6500),
	symbol_line(0, 3000, 500, 3500),
	symbol_line(500, 3500, 1000, 3000),
	symbol_line(1000, 3000, 2000, 3000),
	symbol_line(2000, 3000, 2500, 3500),
	symbol_line(2500, 3500, 2500, 4500),
	symbol_line(2000, 5000, 2500, 4500),
	symbol_line(1000, 5000, 2000, 5000),
	symbol_line(500, 4500, 1000, 5000)])

add_symbol('q', 1200, [
	symbol_line(2000, 3500, 2000, 6500),
	symbol_line(1500, 3000, 2000, 3500),
	symbol_line(500, 3000, 1500, 3000),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(0, 3500, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500)])

add_symbol('r', 1200, [
	symbol_line(500, 3500, 500, 5000),
	symbol_line(500, 3500, 1000, 3000),
	symbol_line(1000, 3000, 2000, 3000),
	symbol_line(0, 3000, 500, 3500)])

add_symbol('s', 1200, [
	symbol_line(500, 5000, 2000, 5000),
	symbol_line(2000, 5000, 2500, 4500),
	symbol_line(2000, 4000, 2500, 4500),
	symbol_line(500, 4000, 2000, 4000),
	symbol_line(0, 3500, 500, 4000),
	symbol_line(0, 3500, 500, 3000),
	symbol_line(500, 3000, 2000, 3000),
	symbol_line(2000, 3000, 2500, 3500),
	symbol_line(0, 4500, 500, 5000)])

add_symbol('t', 1000, [
	symbol_line(500, 1000, 500, 4500),
	symbol_line(500, 4500, 1000, 5000),
	symbol_line(0, 2500, 1000, 2500)])

add_symbol('u', 1200, [
	symbol_line(0, 3000, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500),
	symbol_line(2000, 3000, 2000, 4500)])

add_symbol('v', 1200, [
	symbol_line(0, 3000, 1000, 5000),
	symbol_line(2000, 3000, 1000, 5000)])

add_symbol('w', 1200, [
	symbol_line(0, 3000, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(500, 5000, 1000, 5000),
	symbol_line(1000, 5000, 1500, 4500),
	symbol_line(1500, 3000, 1500, 4500),
	symbol_line(1500, 4500, 2000, 5000),
	symbol_line(2000, 5000, 2500, 5000),
	symbol_line(2500, 5000, 3000, 4500),
	symbol_line(3000, 3000, 3000, 4500)])

add_symbol('x', 1200, [
	symbol_line(0, 3000, 2000, 5000),
	symbol_line(0, 5000, 2000, 3000)])

add_symbol('y', 1200, [
	symbol_line(0, 3000, 0, 4500),
	symbol_line(0, 4500, 500, 5000),
	symbol_line(2000, 3000, 2000, 6000),
	symbol_line(1500, 6500, 2000, 6000),
	symbol_line(500, 6500, 1500, 6500),
	symbol_line(0, 6000, 500, 6500),
	symbol_line(500, 5000, 1500, 5000),
	symbol_line(1500, 5000, 2000, 4500)])

add_symbol('z', 1200, [
	symbol_line(0, 3000, 2000, 3000),
	symbol_line(0, 5000, 2000, 3000),
	symbol_line(0, 5000, 2000, 5000)])

add_symbol('{', 1200, [
	symbol_line(500, 1500, 1000, 1000),
	symbol_line(500, 1500, 500, 2500),
	symbol_line(0, 3000, 500, 2500),
	symbol_line(0, 3000, 500, 3500),
	symbol_line(500, 3500, 500, 4500),
	symbol_line(500, 4500, 1000, 5000)])

add_symbol('|', 1200, [
	symbol_line(0, 1000, 0, 5000)])

add_symbol('}', 1200, [
	symbol_line(0, 1000, 500, 1500),
	symbol_line(500, 1500, 500, 2500),
	symbol_line(500, 2500, 1000, 3000),
	symbol_line(500, 3500, 1000, 3000),
	symbol_line(500, 3500, 500, 4500),
	symbol_line(0, 5000, 500, 4500)])

add_symbol('~', 1200, [
	symbol_line(0, 3500, 500, 3000),
	symbol_line(500, 3000, 1000, 3000),
	symbol_line(1000, 3000, 1500, 3500),
	symbol_line(1500, 3500, 2000, 3500),
	symbol_line(2000, 3500, 2500, 3000)])
