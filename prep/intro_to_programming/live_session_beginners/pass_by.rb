# variables as pointers

# def amethod(param)
#
# end
#
# str = "hello"
# amethod(str)
#
# p str
# # "hello"

################################

# def amethod(param)
#  str += " world"
# end
#
# str = "hello"
# amethod(str)
#
# p str

# error because str is not initialized before it is used in the method(amethod).
# str is initilaized ina different scope than the moethod; methods create their own scope.

puts
####################################

def amethod(param)
 param += " world" # this will return a new string object. str is not modified.
                  # this code is reassigment; reasigning the value of param: param = parma + " world"
end

str = "hello"
amethod(str) # this will have no effect on str.

p str
# "hello"


puts
#################################

def amethod(param)
 param + " world" # this will return a new string object. str is not modified.
                  # this is string concatenation. + is a method call which does not mutate the caller (param)
end

str = "hello"
amethod(str) # this will have no effect on str.

p str
# "hello"

puts
#################################

def amethod(param)
 param << " world"  # str is modified.
                    # << is a destructive method; it mutates the caller (param)
end

str = "hello"
amethod(str) # this will have an effect on str. << mutates the caller in the method aboce.

p str # str will be modified.
# "hello"

puts
#####################

def amethod(param)
param + " universe"
 param << " world"  # str is modified.
                    # << is a destructive method; it mutates the caller (param)
end

str = "hello"
amethod(str)

p str
# "hello world" because param + is concatenating and returning a new string, but it just goes away,
#it's not saved to a variable.
# it does not modify the caller, it does not change param.
# parma << modifies the caller. << (left shift or shovel operator) is appending the word,
# "world" into the param object, which therefore, effects str.It's a permanent destructive mutation.


puts
#####################

def amethod(param)
  param += " universe"  # this is reassignment: param = param + " universe". ALthough it returns
                        # a new string object, it saved it to variable, param.This is not initialization,
  param << " world"     # just reassignment. so, this is now being performed on the reassigned param
                        # from above.it has nothing to do with line 97 below (str = "hello").
                        # see below for explanation.
                        # << is a destructive method; it mutates the caller (param)
end

str = "hello"
amethod(str)

p str
# hello. It's just hello because

puts
###############################


a = "hello" #local variable, initialized to a
b = a
# explaining the above two lines:
# REMEMBER: Variables point to objects. Objects are things that live in memory, they
# take up space in memory.
# b = a is NOT reassignment. Reassignment means  pointintg to a new or different object
# than what it had pointed to initially. This is two different variable initilaization ( a = "hello" and b = a )
# a is initilized to "hello" and b is initialized to point to the same object as a. So, here
# there are two variables and one object; both variables pointing to the same object.

# IMPORTANT: At this point we have two variables; 1 object. Any destructive method call applied
# to any one variable will be operating on the same object.

b << " world" # << is a destructive method, which means it'll change the original
# value of the object, but it will NOT return a NEW object. In other words, << operation
#performed on b will change the value of the object, but will not return a new object.

puts a
puts b
# hello world >> a is hello world (hello and world) because b << is a destructive method,
                 #so it modifies the original caller.
# hello world  Here, b = a, but b is now modifying/destroying a to hello and world; hello world.

puts
##########################

a = "hey" # a is now reassigned to a new object. It's no longer "hello" from above.
# After the above line, line 133 executes we have something new; new string object, "hey" is created.
# so now we have two variables and two objects. a is now pointing to "hey". b is still pointing to
# the object that contains "hello world"
# if a += b, it's still a new object - new object has been created. It's basically 2 hello worlds (as the above code)

# b = a
b << " universe"
# b = a
puts a
puts b

# "hey" because if we had b = a (after a = "hey"), it would output "hey universe" because b would have ben pointing to the same object as a,
# and because << is a destructive method, it modifies a to "hey uiniverse"

# hello world universe because b has not been set to point to a at this point. if we had b = a, it would output "hey universe", just as above explanation.
# However, if we had b = a AFTER b << a, then we would get "hey" for bnoth puts because a has not been mutated and
# b is pointing to a - to the same object (string object).


puts
###############################

a = "hey"
a = b # this is now pointing to the last value of b, which, from above, was "hello world universe."
b << " universe" # mutating a because of <<

puts a
puts b




puts
#########################

def prefix(str)
  "Mr. " + str
end

name = "Mayalu"
prefix(name)

puts name
