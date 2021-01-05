# array_increment.rb

arr1 = [1, 2, 5]
arr2 = []

arr1.each_with_index do |a, idx|
  arr2[idx] = a + 2
end

p arr1
p arr2

# using .each and <<

arr3 = [4, 5, 7]
arr4 = []

arr3.each do |e|
  arr4 << e + 2
end

p arr3
p arr4

# using .map

arr5 = [12, 20, 40]

arr6 = arr5.map do |e|
  e + 2
end

p arr5
p arr6

