# Exercises.

=begin

Given a hash of family members, with keys as the title and an array of names as
the values, use Ruby's built-in select method to gather only immediate family
members' names into a new array.
=end

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }



immediate_fam = family.select do |k, v|
  k == :sisters || k == :brothers
end

puts immediate_fam
puts
puts immediate_fam.values
puts
p immediate_fam.values.flatten


#####################

=begin

Look at Ruby's merge method. Notice that it has two versions. What is the difference
between merge and merge!? Write a program that uses both and illustrate the differences.

=end

cat = {name: "Cookie"}
weight = {weight: "10lbs"}

puts cat.merge(weight) # is not a destructive method.
# {:name=>"Cookie", :weight=>"10lbs"}
puts cat
# {:name=>"Cookie"}
puts weight
# {:weight=>"10lbs"}

puts cat.merge!(weight) # bang operator is a destructive method.
# {:name=>"Cookie", :weight=>"10lbs"}

puts cat
# {:name=>"Cookie", :weight=>"10lbs"}

puts weight
# {:weight=>"10lbs"}

#######################################

=begin

Using some of Ruby's built-in Hash methods, write a program that loops through a
hash and prints all of the keys. Then write a program that does the same thing
except printing the values. Finally, write a program that prints both.

=end

bands = {"The Ashleys": "Debut", "Pink FLoyd": "Dark Side Of The Moon", "Led Zeppelin": "I"}

bands.each do | k, v |
  puts k
end

puts
puts "##########"

bands.each do | k, v |
  puts v
end

puts
puts "##########"

bands.each do | k, v |
  puts k, v
end

puts
puts "##########"

######################################

=begin
Given the following expression, how would you access the name of the person?
=end
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]


######################################

=begin

What method could you use to find out if a Hash contains a specific value in it?
Write a program to demonstrate this use.

=end

set_list = {"Sir Duke": 1, "What is Hip?": 2, "Fire": 3, "Waterfall": 4}
# set_list2 = { 1: "Sir Duke", 2: "What is Hip?",  3: "Fire", 4: "Waterfall"} error, unexpected ,

if set_list.has_value?(1)
  puts "Has value!"
else
  puts "Nope!!"
end


##############################

=begin

6.Given the array:

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


# iterate over the array
# sort each word into alphabetical order
# if key exists, append current word into value (array)
# otherwise, create a new key with this sorted word.

result = {}

words.each do |word|
  key = word.split('').sort.join # split the word into an array of characters,
                                  #then sorting it, then joining the characters back into a string.
                                  # this is creating the keys for the result hash.
  if result.has_key?(key) # if the result hash already has this key,
    result[key].push(word) # we want to push the current word into the array that
                            #will be the value associated with this key
  else
    result[key] = [word]  # otherwise, create a new key in the hash with the sorted word.
                        # when we create this new key we're going to assign it's value
                        # to be an array. We'll place the current word in that array.

  end
end

result.each_value do |v| # Outputting just the value.
                        # We invoke the each_value method on the result hash
                        # Each value will be passed to the block
                        # we use p to output each of this lists.
  puts "------"
  p v
end

=begin Output:

["demo", "dome", "mode"]
------
["none", "neon"]
------
["tied", "diet", "edit", "tide"]
------
["evil", "live", "veil", "vile"]
------
["fowl", "wolf", "flow"]

=end

#######################
