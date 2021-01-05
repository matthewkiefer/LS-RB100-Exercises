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

p organized_arr
