def badge_maker(name)
  return "Hello, my name is #{name}."
end

 def batch_badge_creator(array)
  list = []
  array.each do |name|
    list << badge_maker(name)
  end
  list
end

def assign_rooms(speakers)
  result = []
  speakers.each_with_index { |person , index|
    result << "Hello, #{person}! You'll be assigned to room #{index + 1}!"
  }
  result
end

def printer(attendees)
  #output first the results of the batch_badge_creator method
  #and then of the assign_rooms method to the screen
  badges = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  badges.each do |name|
    puts name
  end
  rooms.each do |room|
    puts room
  end  
end
