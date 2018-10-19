=begin
20 questions
3 hours

Not difficult, but take time.

Interview is 2 problems  - about 40 minutes. Solving live.
Between easy and Medium. Codewars 6Q, but some 6Q are harder than interview q's.
=end

# animal = "dog"
#
# loop do
#   animal = "cat"
#   toy = "ball"
#   break
# end
#
# puts animal
# puts toy

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
=begin

=end

##############
def test
  puts "written assessment"
end

var = test # runs test method

if var # if nil
  puts "written assessment"
else
  puts "interview"
end

###############
# Write a function that takes in a string of one or more words,
# and returns the same string, but with all five or more letter words
# reversed. Strings passed in will consist of only letters and spaces.
# Spaces will be included only
# when more than one word is present.

# p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
# p spin_words("This is a test") == "This is a test"
# p spin_words("This is another test") == "This is rehtona test"


=begin
  input: str
  ouput: str
  rules: words with 5 letters or more reversed
  algorithm:
    # take in str
#   # split str into an arr of words
#   # map word arr
#   # if word.length > 4, return word.reverse to the block, else return word
#   # then join that array and return the result
=end


def spin_words(str)
  str.split(" ")
  if str.length > 5
    str.reverse
  else str
  end
end

p spin_words("Hey fellow warriors")
p spin_words("This is a test")

def spin_words(str)
  str = str.split(" ")
  str.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  str.join(" ")
end

p spin_words("Hey fellow warriors")
# spin_words("This is a test")

def spin_words(string)
  reversed_string = string.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  reversed_string.join(' ')
end

# Srdjan, Nick Kollinger, Max, Liela Rotschy, Steve
