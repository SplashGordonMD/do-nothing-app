json.array! @shoes.each do |shoe|
  json.id shoe.id
  json.use shoe.use
  json.material shoe.material
end
