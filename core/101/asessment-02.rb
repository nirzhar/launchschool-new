=begin
20 questions
3 hours

Not difficult, but take time.

Interview is 2 problems  - about 40 minutes. Solving live.
=end

animal = "dog"

loop do
  animal = "cat"
  toy = "ball"
  break
end

puts animal
puts toy

# outputs cat and error
##############

# variable shadowing
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal

###########

def test(str)
  str += '?'
  str.downcase!
end

test_str = "Written Assessment"
test(test_str)

puts test_str
