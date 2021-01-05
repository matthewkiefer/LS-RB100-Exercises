# hash_challenge.rb

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

char_value_sums = {}
organized_arr = []
tempArray = []

words.map do |word|
  sum = 0
  word.each_char {|c| sum += c.ord}
  char_value_sums[word] = sum
end

puts char_value_sums

#extract different values with no duplicates
arr_targets = char_value_sums.values.uniq
puts arr_targets

#char_value_sums.each_pair do |word, num| 

#for each key, iterate through hash, compare key, put in array if a match, and delete item

#array pseudocode:
#check: if value matches array_source[0], push it in final_array[0] as part of an array, which means push it to
=begin
char_value_sums.each do |key, value|
  arr_targets.each do |arr_val|

    organized_arr[arr_val] = tempArray
    puts "Key is #{key}, value is #{value}, and arr_val is #{arr_val}"
    if arr_val == value 
      organized_arr[arr_val] << key
    end
  end
end

puts organized_arr

=end

#Go through array of values, look at each key/value pair and if a match, pop into an array, at the end of each array loop 
#push that array into the final array

arr_targets.each_with_index do |code, idx|
  matching_words = []
  char_value_sums.each do |word, key_code|
    if code == key_code
      matching_words.push(word)
    end
  end
  organized_arr[idx] = matching_words
end

puts organized_arr
