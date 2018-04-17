#Codecademy lesson 7.Let's Learn Return

=begin

If we don't need a method to print something to the console, then we use Return, which can be used if we want
the method to give us a value ora nother method.

=end

def double(n)
  return n * 2
end

output = double(7)
output += 2
puts output

#############################

def add(a,b)
  return a + b
end

puts add(5,20)

#############################

def greeter(name, greeting)
  return name, greeting
end

puts greeter("Mayalu", "Hello!")

############################

def by_three?(number)
  unless number % 3 == 0
    return false
  else
    return true
  end
end

puts by_three?(294)


##############################

def welcome(name)
  return "Hello, #{name}"
end

welcome("Mayalu")

##############################

numbers = [5, 2, 8]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum
