# rec_to_zero.rb - mine first, though is it true recursion if there's a return statement?

=begin

def countdown(number)
  puts number
  if number == 0 
    return
  end
  countdown (number-1)
  end

countdown(10)

=end

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)