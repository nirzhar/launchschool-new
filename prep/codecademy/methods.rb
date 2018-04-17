=begin


Let's start with the new bit of code you saw in exercise 1:

def alphabetize(arr, rev=false)
The first part makes sense—we're defining a method, alphabetize.
We can guess that the first parameter is an array, but what's this rev=false business?

What this does is tell Ruby that alphabetize has a second parameter, rev (for "reverse")
that will default to false if the user doesn't type in two arguments.
You might have noticed that our first call to alphabetize in exercise 1 was just

 alphabetize(books)
Ruby didn't see a rev, so it gave it the default value of false.


=end

=begin
 After your .sort! call, add an if-else statement. If rev is true, call reverse! on arr, else return arr.

Keep your numbers array and the puts statement so that you can see your work in action!

=end

def alphabetize(arr, rev = false)
  arr.sort!
  if rev == true
    arr.reverse
   else
    return arr
	end
end

numbers = [ 8, 6, 9, 2, 5, 1 ]

puts alphabetize(numbers, true)
puts alphabetize(numbers)
