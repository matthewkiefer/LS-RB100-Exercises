# hash_loops 

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.keys
puts person.values
# puts "And here are both: " + person.each_key { |key| puts key} + person.each_value { |value| puts value }

person.each {|key, value| puts key }
person.each {|key, value| puts value }
person.each do |key, value|
  print key 
  print " " 
  puts value 
end
