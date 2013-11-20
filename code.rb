require_relative './testing.rb'

class Calculator
	include MakerTests

	def add(x, y)
		x + y
	end

	def sub(x, y)
		x - y
	end
end

calc = Calculator.new
add12 = calc.add(1, 2)
sub31 = calc.sub(3, 1)

#these should pass
calc.assert(add12 == 3)
calc.assert(sub31 == 2)

#this should fail
calc.assert(add12 == 5)

