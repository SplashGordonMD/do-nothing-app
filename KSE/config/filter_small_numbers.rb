#Filters out any numbers greater than 5 [4,82,8,16,9,27,40,19]
numbers = [4,82,88,6,32,19]
small_numbers = []
numbers.each do |number|
  if number <= 25
    small_numbers << number
  end
end
p small_numbers