# array_checker.rb

arr = [1, 2, 99]

num = gets.chomp.to_i

def checker(arr, num)
  if arr.include?(num)  
    puts "Found it!"
  else puts "No luck"
  end
end

checker(arr, num)