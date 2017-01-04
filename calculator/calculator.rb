require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
   describe "#result" do
     it 'should return the product of a number multiplied by itself' do
       calculator = Calculator.new
       expect(calculator.square(3)).to eq(9)
  end

    it 'should work with negative numbers' do
        calculator = Calculator.new
        expect(calculator.square(-12)).to eq(144)
      end
    end
  end


# RSpec.describe Calculator do
#    describe "#divide" do
#      it 'should return the quotiant of two numbers' do
#        calculator = Calculator.new
#        expect(calculator.divide(12, 3)).to eq(4)
#      end

#        it 'should work with negative numbers' do
#           calculator = Calculator.new
#           expect(calculator.divide(12, -3)).to eq(-4)
#         end


# RSpec.describe Calculator do
#    describe "#multiply" do
#      it 'should return the result of two numbers' do
#        calculator = Calculator.new
#        expect(calculator.multiply(12, 3)).to eq(36)
#      end

#        it 'should work with negative numbers' do
#           calculator = Calculator.new
#           expect(calculator.multiply(2, -3)).to eq(-6)
#         end

#  RSpec.describe Calculator do
#    describe "#subtract" do
#     it 'should return the result of two numbers' do
#       calculator = Calculator.new
#       expect(calculator.subtract(12, 3)).to eq(9)
#     end

#     it 'should work with negative numbers' do
#       calculator = Calculator.new
#       expect(calculator.subtract(1, -3)).to eq(4)
#     end
#   end
# end
