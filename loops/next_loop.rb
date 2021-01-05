# next_loop.rb

i = 0
loop do
  i += 2
  if i == 6
    next
  end
  puts i
  if i == 10
    break
  end
end
