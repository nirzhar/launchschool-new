# How return works

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# 7

########################

# lines after return is not executed

def add_three(number)
  return number + 3
  number = 5
end

returned_value = add_three(4)
puts returned_value

# 7 because line after return is not executed.

####################################

# Chaining methods:

def add_three(n)
  return n + 3  # or n + 3 
end

add_three(2).times { puts "Dzogchen." }
# Dzogchen.
# Dzogchen.
# Dzogchen.
# Dzogchen.
# Dzogchen.
# 5

############################

# what about nil value?

def add_three(n)
  puts n + 3
end

add_three(2).times { puts "Dzogchen." }

# NoMethodError: undefined method 'times' for nil:NilClass
# puts returns nil and nil cannot be chained.
