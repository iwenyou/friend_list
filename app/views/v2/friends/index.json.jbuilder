json.array! @friends.each do |friend|
  json.partial! 'friend.json.jbuilder', friend: friend
end
