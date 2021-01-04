puts "What is thy first name, please?"
first_name = gets.chomp
puts "And last?"
last_name = gets.chomp
puts "Welcome, #{first_name} #{last_name}"

#continued
puts "And now I shall say thy name again and again:"
10.times do
  puts first_name
end