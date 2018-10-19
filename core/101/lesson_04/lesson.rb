str = 'abcdefghi'

str[2] # => "c"
puts str[2, 3] # cde
puts str [2, 3][0] # c We are calling [0] on the return cvalue of str[2, 3].

# How would you reference 'grass' from within this string? Try it out in irb
str= "The grass is green."
puts str.split[1, 2] # "grass is"
   # OR
puts str[4, 5] # "grass"
    # OR
puts str.slice(4, 5) # "grass"
puts puts
##############
hsh = { 'fruit' => 'apple', 'vegetable' => 'cucumber' }
hsh['fruit'] # 'apple'
puts hsh['vegetable'][4] # 'm'
puts puts
##############

country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
p country_capitals.keys # => [:uk, :france, :germany]
p country_capitals.values # => ['London', 'Paris', 'Berlin']
p country_capitals.values[0] # => 'London'
p country_capitals.keys[1] # => ':france'
puts puts
###############
hsh = { :a => 1, 'b' => 'two', :c => nil }

#p hsh.fetch('two') #key not  found
p hsh.fetch('b') # "two"
puts puts
###############

str = 'How do you get to Carnegie Hall?'
p arr = str.split # => ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]
p arr.join        # => "HowdoyougettoCarnegieHall?"
p arr.join(' ') # => 'How do you get to Carnegie Hall?'
puts puts

################
# Hash has a to_a method, which returns an array:

hsh = { sky: "blue", grass: "green" }
p hsh.to_a # => [[:sky, "blue"], [:grass, "green"]]
puts puts
##############

# array has a to_h mehtod, which returns a hash:
arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
p arr.to_h # => {:name=> "Joe", :age=> 10, :favorite_cloro=> "blue"
puts puts

##############

str = "joe's favorite color is blue"
p str[6] = 'F'
p str[15] = 'C'
puts puts

#################

arr = [1, 2, 3, 4, 5]
p arr[0] += 1
p arr[1] += 1
p arr[2] += 1
p arr[3] += 1
p arr[4] += 1
puts puts
# [2, 3, 4, 5, 6] rest of the elements are not calculated because there
# are no values for the indeces.

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
# Use the same method to set a value of either 'Fruit' or
# 'Vegetable' to each element in the hash.

hsh[:apple] = 'Fruit'
hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:mango] = 'Fruit'
hsh[:broccoli] = 'Vegetable'
p hsh
puts puts

####################

#### LOOPS #########

loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end
puts puts

###################

alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size # OR alphabet.length
  puts alphabet[counter]
  counter += 1
end
puts puts

###################

colors = ['red', 'orange', 'purple', 'blue', 'humpty dumpty']

counter = 0
loop do
  break if counter == colors.size
  if counter.even?
    puts "I'm your favorite color, #{colors[counter]}"
    puts
  else
  puts "I'm the odd color, #{colors[counter]}"
  puts
  end
  counter += 1
end
puts puts

##################3
# Looping over hash

number_of_pets = {
'cats' => 2,
'dog' => 1,
'camels' => 3,
'dinos' => 5
}

pets = number_of_pets.keys
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet  = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts " I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
puts puts

##################

family_plan = {
  'Wife' => 'Rachel',
  'Older son' => 'Dorjé',
  'Younger son' => 'Chimé',
  'Self' => 'Bubba Gump',
}
 family = family_plan.keys
 counter = 0

 loop do
   break if counter == family_plan.size
   current_family_member = family[counter]
   name_and_occupation = family_plan[current_family_member]
   puts "My #{current_family_member} is #{name_and_occupation}."
   counter += 1
 end
 puts puts

 ###################

 
