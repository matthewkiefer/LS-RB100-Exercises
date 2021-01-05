# perform_again.rb

loop do
  puts "Again?"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end