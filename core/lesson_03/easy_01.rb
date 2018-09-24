# Question 03
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.sub! "important", "urgent" # use gsub! to substitute globally.

# Question 04
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers = [1, 2, 3, 4, 5]

puts numbers.delete_at(1) # 2 , numbers is now [1, 3, 4, 5]
puts numbers.delete(1) # 1, numbers is now [2, 3, 4, 5]

# Question 05
# Programmatically determine if 42 lies between 10 and 100.
(10..100).cover?(42) # .cover returns true if obj is between beg and end

# Question 06
# Starting with the string: famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

famous_words.prepend("Four score and ")

"Four score and " + famous_words

"Four score and " << famous_words

# Question 07
# Fun with gsub:
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

# This gives us a string that looks like a "recursive" method call:
# "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

# If we take advantage of Ruby's Kernel#eval method to have it execute this
# string as if it were a "recursive" method call
eval(how_deep)

# Question 08
# If we build an array like this:
 flintstones = ["Fred", "Wilma"]
 flintstones << ["Barney", "Betty"]
 flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:
#["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.
p flintstones.flatten!

# Question 09
 flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

p flintstones.assoc("Barney")
# => ["Barney", 2]
