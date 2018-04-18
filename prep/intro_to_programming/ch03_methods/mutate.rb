
# Example of a method definition that modifies its argumenr permanently.

a = [ 1, 2, 3, 9 ]

def mutate(any_name)
  any_name.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

# "Before mutate method: [ 1, 2, 3, 9 ]"
# "After mutate method: [ 1, 2, 3 ]"


##############################

# Example of a method definition that does not mutate the caller.

a = [ 1, 2, 3, 9 ]

def no_mutate(any_name)
  any_name.last
end

p "Before mutate method: #{a}"
no_mutate(a)
p "After mutate method: #{a}"


# "Before mutate method: [ 1, 2, 3, 9 ]"
# "After mutate method: [ 1, 2, 3, 9 ]"

######################################

# Puts vs. Return
a = [ 1, 2, 3, 14 ]

def mutate(mahamudra)
  mahamudra.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# "Before mutate method: [ 1, 2, 3, 14 ]"
# 14
# "After mutate method: [ 1, 2, 3 ]"

=begin

1. We print out a as we initially defined it.

2. We print out the value (last element of an array) returned by the mutate method.

3. We print out the value of a after the mutate method.

=end
