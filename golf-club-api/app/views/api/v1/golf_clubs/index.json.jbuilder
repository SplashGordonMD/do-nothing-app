json.array! @golf_clubs.each do |golf_club|
  json.id golf_club.id
  json.variety golf_club.variety
  json.brand golf_club.brand  
  json.number golf_club.number
end