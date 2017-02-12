json.array! @friends.each do |friend|
  json.first_name friend.first_name
  json.last_name friend.last_name
  json.birthday friend.birthday
  json.cat_name friend.cat_name
end
