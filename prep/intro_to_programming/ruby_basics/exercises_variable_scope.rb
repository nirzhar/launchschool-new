############################# 4 ############################
a = "Xazzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
=begin
Xa-zy #String is mutable, numbers are not. A reference to the 'a' variables string, "Xyzzy"
is passed into the my_value method and assigned to the method parameter 'b',
the call of b[2] mutates the string "Xyzzy" and therefore the value referenced
by 'a' is changed outside of my_value as well
=end
# if b[3]: Xaz-y
# if b[0]: -azzy

############################# 5 ############################

a  = "Xyzzy"

def my_value(b)
  #puts b #will output "Xyzzy"
  b = "yzzX" # assigning new string to b, not modifying that string. Assignment never changes the value
              # of an object; instead, it creates a new object, and then it stores a reference
              # to that object inthe variable on the left.So, at the end of my_value,
              # b is still referencing "yzzx", while a remains unchanged, "Xyzzy"
end

my_value(a)
puts a
# Xyzzy

=begin

In line 31, we invoke the my_value method and passn the local variable a as an argument.
ANd, on line 32, we output a.
In line 1, we initialize and a and it references a string object withthe value of "Xyzzy".
*IMPORTANT* When a is passed as an argument to the method my_value, b is now pointed to the same object as a ("Xyzzy")
However, on line 25, we reassign b and pointit at a String object with a value of "yzzyX".
Now, the local variable a and b, local variable of method my_value, are no longer pointing at the same object.
If we output b now, it'll output "yzzyX", it's original String object reference.
We are simply pointing b to a new object with reassignment. So, when we output a, it'll be the same value as
the value assigned to the local variable a on line 21.


=end

puts

#####################
def my_value(b)
  #puts b #will output "Xyzzy"
  b[3] = ("1, 2") # this is not an object assignment, but a method call to a method named, []=.
                  # This method updates the String referenced by b; it does not
                  # CHANGE the reference, so a is also referencing the same modified String.
end

my_value(a)
puts a
# Xyz1, 2y
#
puts
puts

b = "n"
def my_value(b)
  puts b
  b = "abc"
  puts b
end
 my_value(b)
 puts b

 puts
 puts

 ##############

#  a = 7
#
# def my_value(b)
#   b = a + a  # c + c will resul tin the same error, but with undefined c.
# end
#
# my_value(a)
# puts a

# `my_value': undefined local variable or method `a' for main:Object (NameError)

=begin

Even though a is defined before my_value is defined, it is not visible inside my_value.
Method definitions are self contained with respect to local variables.
Local variables initialized inside the method definition are not visible outside
the method definition, and local variables initialized outside the method definition
are not visible inside the method definition.

=end


############################# 7 ############################

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# 3

=begin

array.each is  a method invocation ( we invoke the array.each method)  with a block (the do each part).
Blocks have access to variables initialized outside the scope, unlike method definitions.
Here, the block assigns a to element, so a is now the elemsnt of array. .each makes a
iterate over the array. The last element that it iterages over is 3.

OR

each takes a block argument. As we pass each element of the array to the block,
we'll be assigning it to the block local variable, element. On line 109, we reassign a to the value of element.
We can access local variable a within this block because block scoping rules allow that.

=end

puts

########################### 8 ###############

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# undefined local variable or method 'a' for main:Object (Name Error)
# we get this error because the local varibale, a, is initialized in the block
# passed to the each method and is not initialized in the block of the puts method (outside the scope of the block.)
# a is not accessible outside inner scope of the block.


puts
########### 9 ##############

a = 7
array = [1, 2, 3]

array.each do |b|
   a += 1
end

puts a
# 7

=begin
although block has access to the variable outside it's scope, in this case the
output is the value of the variable a which is outside the block because
of "variable shadowing."
When ruby goes looking for variable a, it frst looks within the block
and if it finds it it will use that a. If we wanted it to access the outer a,
we'd have to change the name of either of the variables.

Also, we are not reassigning the elements of the array either (line 153) because
.each does not use the return value of the block. It just returns the array it was originally called on.
SO, this block is not being used at all. if we output the array, it'll show it remains unchanged.

=end

puts
########### 10 ##############

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
# raises an exception, or issues an error.

=begin

This is because local cvariable a is not accessible to the method definition, my_value.
Because the invocation of each is inside my_value method definition, the outer a
is not visible inside the method invocation with a block.

=end
