# course-exercises.rb

# Loops 2
=begin
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct"
    break
  else 
    puts "Wrong, again please"
  end
end

# Loops 2 Insert Numbers
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size == 5
end
puts numbers


# Loops 2 Empty the Array
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  if names.size() != 0
    puts names.pop
  else break
  end
end


# Loops 2 Stop Counting 
5.times do |index|
  puts index
  break if index == 2
end

# Loops 2 Only Even
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Loops 2 First to Five
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5
  puts "Done!"
  break
end


# Loops 2 Greeting


def greeting(number_of_greetings)
  while number_of_greetings > 0
    puts "hello!"
    number_of_greetings -= 1
  end
end

number_of_greetings = 2


greeting(number_of_greetings)


# User Input Repeat after me
puts "Anything, old bean:"
puts = gets.chomp


# User Input Your Age in Months
print "How old are you? >>"
years = gets.chomp.to_i
puts "You are #{years*12} months old!"



# User Input Print Something
puts "Do you want me to print something? (y/n)"
loop do
  reply = gets.chomp.downcase;
  if reply == "y"
    puts "something"
    break
  elsif reply == "n"
    puts "Fine."
    break
  else
    puts "C'mon. Gimme a chance. (y/n)"
  end
end

# User Input LS Printer

puts "How many output lines do you want? Enter a number >= 3: "
lines = gets.chomp.to_i

unless lines < 3
  lines.times { puts "LS BEST" }
end

# User Input Password
loop do
  puts ">> Please enter your password: "
  password = gets.chomp
  if password == "SecreT"
    puts "Welcome!"
    break
  else 
    puts "Invalid!"
  end
end

#User Input Name and Password
NAME = "admin"
PASSWORD = "SecreT"

loop do
  puts "Please enter user name: "
  name = gets.chomp

  puts "Please enter your password: " 
  password = gets.chomp

  break if name == NAME && password == PASSWORD
  puts "Failed auth."
end
puts "Welcome!"
 

#User Input Dividing Numbers

puts "Number the first: "
num_1 = gets.chomp

puts "Number the second: "
num_2 = gets.chomp


def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end


if valid_number?(num_1) && valid_number?(num_2) && num_2.to_i != 0
  puts "#{num_1} / #{num_2} is #{num_1.to_i / num_2.to_i}"
else puts "Invalid input"
end

#LS Printer pt 2

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q/q to quit):'
  number_of_lines = gets.chomp
  if number_of_lines.downcase == "q"
    break
  else
    number_of_lines = number_of_lines.to_i
  end

  if number_of_lines < 3
    puts ">> That's not enough lines."
    next
  end

  number_of_lines.times do
    puts 'Launch School is the best!'
  end
end


#User Input Opposites Attract

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts "Integer A, positve or negative, please: "
  int_a = gets.chomp
  puts "Integer B, the oppositve of the other, please: "
  int_b = gets.chomp

  if  valid_number?(int_a) && valid_number?(int_b)
    int_a = int_a.to_i
    int_b = int_b.to_i
  else
   puts "Invalid input"
   next
  end

  if (int_a > 0 && int_b > 0) || (int_a < 0 && int_b < 0)
    puts "Follow the rules, please, and try again."
    next
  else 
    puts "Output of adding #{int_a} and #{int_b} is #{int_a + int_b}"
    break
  end
end

#Methods Print Me pt 1+2
def print_me
  return "Printing return val!"
end

puts print_me


#Methods Greeting pt 2
def say_hello
  "Hello"
end

def say_world
  "World"
end

def greet
  say_hello << " " << say_world
end

puts greet

#Methods Make and Model
def say_two_words(word_1 = "1st", word_2 = "2nd")
  puts word_1 + " " + word_2
end

say_two_words("Toyota", "Corolla")
say_two_words("Toyota")
say_two_words("", "Test2")
say_two_words


#Methods Day or Night?
daylight = [true, false].sample

def time_of_day (day = true)
  if day
    puts "Daytime!"
  else 
    puts "NIghttime!"
  end
end

time_of_day(daylight)
time_of_day(daylight)
time_of_day(daylight)
time_of_day

 
#Methods Naming Animals
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spo')}."
puts "The cat's name is #{cat("spot")}."

#Methods  Name Not Found
def assign_name(name = "Bob")
  name
end
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

#Multiply the sum
def add(n, n2)
  n + n2
end

def multiply(n, n2)
  n * n2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

#Methods Random Sentence
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end
  
def sentence(name, activity)
  "#{name} went #{activity} just last year"
end

puts sentence(name(names), activity(activities))


#Return
#Breakfast, Lunch, or Dinner?
def meal
  puts 'Dinner'
end

p meal

#Counting Sheep
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep


#Conditionals
#Stoplight (case)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when "green" then puts "GO"
when "yellow" then puts "SLOW"
when "red" then puts "MOW?"
end

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
    puts 'Stop!'
end

#Sleep alert
status = ['awake', 'tired'].sample

me = if status == "awake"
  "Produce"
else
  "Sleep!"
end

p me

#String

#Array
numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map do |n|
                    n * 2
                  end
p doubled_numbers

numbers = [5, 9, 21, 26, 39]
divisible_by_three =  numbers.select do |num|
                        num % 3 == 0
                      end
p divisible_by_three

#Hashes

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers =  numbers.map do |key, value|
                  value / 2
                end
 p half_numbers

 low_numbers =  numbers.select! do |key, value|
                  value < 25
                end
p low_numbers
p numbers

#

vehicle = {
  car: {
    type: "sedan"
    color: "blue"
    year: 2003
  },
  truck: {
    type: "pickup"
    color: "red"
    year: 1998
  }
}

car = [
  [:type, 'sedan'],
  [:color, 'blue'],
  [:year, 2003]
]
p car
=end

#debug
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
predict_weather

#Pets
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].push('bowser')

p pets 

#Colorful things
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length-1 || i > things.length-1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  "warrior" => { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  "mage" => { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase
puts character_classes[input]

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player