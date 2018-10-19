# Questio 01
# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddoe" => 10 }

#see if "Spot" is present
p ages.key?("Spot")
# OR
p ages.include?("Spot")
# OR
p ages.member?("Spot")

# Question 02
# Starting with this string:
munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original
# munsters_description above):
# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

puts munsters_description.capitalize
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase

# Question 03
# We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)

# Question 04
# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.include?("Dino")
p advice.match("Dino")

# Question 6
# How can we add the family pet "Dino" to our usual array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6
# How can we add the family pet "Dino" to our usual array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.push("Dino")
p flintstones << "Sauraffe"
# p flintstones.concat("Junior")

# Question 7
# How can we add multiple items to our array? (Dino and Hoppy)
p flintstones.concat(%w(Moppy Hoppy))

# Question 8
# Shorten this sentence: ...remove everything starting from "house".
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
# p new_advice = advice.slice!( "house training your pet dinosaur.")
# p advice

# Question 9
# Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"
p statement.count('t')

# Question 10
# Back in the stone age (before CSS) we used spaces to align things on the screen.
# If we had a 40 character wide table of Flintstone family members, how could
# we easily center that title above the table with spaces?
title = "Flintstone Family Members"
p title.center(40)
