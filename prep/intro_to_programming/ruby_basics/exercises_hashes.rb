
############ 1 ##############
# Create a hash that contains the following data and assign it to a variable named car.

=begin
type 	color 	mileage
sedan 	blue 	80_000
=end

car = {type: "sedan", color: "blue", mileage: 80,000}

puts
############## 2 ##############

# Using the code below, add the key :year and the value 2003 to car.

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car[:year] = 2003


puts
################# 3 ################
# Using the following code, delete the key :mileage and its associated value from car.

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)


puts
################## 4 ############
# Using the following code, select the value 'blue' from car and print it with #puts.

car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]


puts
################# 5 ##############

# Use Hash#each to iterate over numbers and print each element's key/value pair.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}
numbers.each do |key, value|
  puts "This #{key} number is #{value}"
end


puts
##################### 6 ##############
# Use Enumerable#map to iterate over numbers and return an array containing
# each number divided by 2. Assign the returned array to a variable named
# half_numbers and print its value using #p.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |n, m| m / 2 }
p half_numbers # use p for priting arrays with .map method.


puts
#################### 7 #################
# Use Hash#select to iterate over numbers and return a hash containing only
# key-value pairs where the value is less than 25. Assign the returned hash to a
# variable named low_numbers and print its value using #p.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |key, value| value < 25 }
p low_numbers # #select returns a new hash consisting of entries for which the block returns true.


puts
################## 8 ###################
# In the following code, numbers isn't mutated because #select isn't a destructive method.
# However, there is a destructive version of #select named #select!. Modify the code to use #select! instead of #select.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

# {low: 10}
# {low: 10}
# select! (bang operator) modifies the hash assigend to numbers.

puts
################### 9 ###################
# Create a nested hash using the following data.

=begin
Car
type 	color 	year
sedan 	blue 	2003

Truck
type 	color 	year
pickup 	red 	1998
=end

vehicles = { "car": {type: "sedan", color: "blue", year: 2000},
"truck":{type: "pickup", color: "red", year: 1998}
}

puts

#################### 10 ###################
# Rewrite car as a nested array containing the same key-value pairs.
=begin
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}
=end
car = [[:type, "sedan"], [:color, "blue"], [:year, 2003]]

###########################
