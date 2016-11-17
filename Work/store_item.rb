# hashes
{"type" => "coffee", "color" => "black", "price" => 2}
{"item2" => "snack", "color" => "red", "price" => 1}
{"item3" => "muffin", "color" => "tan", "price" => 2}
# puts item1
# puts item2
# puts item3

#class
class Coffee
# attr_reader :first_name, :last_name

def initialize(input)
  @type = input[:type]
  @color = input[:color]
  @price = input[:price]
end

def print_coffee_details
  puts "coffee is #{@type} #{@color}. the price #{@price}"
end


end

# black_coffee = Coffee.new("black-coffee", "black", 2)
black_coffee = Coffee.new({type: "coffee", color: "black", price: 2})

black_coffee.print_coffee_details

