# final-exercises.rb

=begin

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr_odd = []

arr.select do |num|
  if num.odd?
    arr_odd.push(num)
  end
end

new_array = arr.select { |number| number % 2 != 0 }
puts new_array

puts arr
puts arr_odd

def add_back(array, num)
  array.push(num)
  puts "Array is now " + array.to_s + " after appending #{num}"
end

def add_front(array, num)
  array.unshift(num)
  puts "Array is now " + array.to_s + " after prepending #{num}"
end

add_back(arr, 11)
add_front(arr, 0)

arr.delete(11)
add_back(arr, 3)

arr.uniq!

puts arr

#hash exercises

h = {a:1, b:2, c:3, d:4}

puts h

h.delete_if do |key, value|
  value < 3.5
end

puts h

=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

=begin
contacts["Joe Smith"] = {email:contact_data[0][0], address:contact_data[0][1], phone:contact_data[0][2]}
contacts["Sally Johnson"] = {email:contact_data[1][0], address:contact_data[1][1], phone:contact_data[1][2]}

puts contacts

puts contacts["Joe Smith"][:email]
=end

#16. Challenge

fields = [:email, :address, :phone]

contacts.each_with_index do |(name, empty_fields), contact_idx|
  puts name
  puts empty_fields
  puts contact_idx
  c = contact_idx
  puts "This is c: #{c}"
  fields.each_with_index do |field, field_idx|
    puts field
    puts field_idx
    puts "This is contact data: #{contact_data[c][field_idx]}"
    empty_fields[field] = contact_data[contact_idx][field_idx]
  end
end
p contacts
