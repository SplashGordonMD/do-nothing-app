json.array! @golf_clubs.each do |golf_club|
  json.id golf_club.id
  json.variety golf_club.variety
  json.number golf_club.number
  json.brand golf_club.brand
end