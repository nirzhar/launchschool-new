
=begin

Write a program that checks if the sequence of characters "lab" exists in the following strings.
If it does exist, print out the word.

    "laboratory"
    "experiment"
    "Pans Labyrinth"
    "elaborate"
    "polar bear"

=end

def word_exist(word)
  if /lab/.match(word)
    puts "#{word} has lab in it."
  else
  "What? No lab for you in #{word}. Vamoosh!"
  end
end

puts word_exist("laboratory")
puts word_exist("experiment")
puts word_exist("Pans Labyrinth")
puts word_exist("Pans labyrinth")
puts word_exist("elaborate")
puts word_exist("polar bear")

#############
puts
puts
######### LS Solution ##########

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")


######################
puts
#######################

# Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

puts
