# boolean_matchdata.irb

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!!"
  else
    puts "Wahn Wahn Waaahn..."
  end
end

has_a_b?("Bumblebee")
has_a_b?("kitty cat")
has_a_b?("bologne")
has_a_b?("The best book.")

# We have a match!!
# Wahn Wahn Waaahn...
# We have a match!!
# We have a match!!


#############################

# map

 def test(b)
   b.map { |letter| "I like the #{letter}" }
 end

 a = [ 'a', 'b', 'c', 'd']
 puts test(a)

 #######################

 # map!

 def test(b)
   b.map! { |letter| "I like #{letter}." }
 end

 a = [ 'a', 'b', 'c', 'd' ]
 puts test(a)
