################ 1 ####################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'breakfast'
end

puts meal


puts
#################### 2 ###################

# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Evening'
end

puts meal
#evening because the last line evaluated or eecuted is Evening, even though there is no "return" in the method.

puts
################## 3 ###################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
# Breakfast becase the method explixitly says to return Breakfast. When return is executed, the method is exited.

puts
############## 4 #####################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
# Dinner is output and 'Breakfast is returned.' return value of puts is nil, but in this
# method 'Dinner' is an explicit return.

puts
##################### 5 #################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal
# 'Dinner' is printed, nil is returned. nil is also printed because of the p.
# we use p so that nil is visible.


puts
################### 6 #####################

#What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
# 'Breakfast' is returned or printed because return immediately exits the method and returns the provided value
# which is "Breakfast' in this case. Return will be executed upon the invocation of meal, which means meal will
# immediately end and return the value provided by return."


puts
############# 7 #################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# 0 1 2 3 4 5 5 is printed because after iterating 5 times, the block returns the
# initial integer. Which, in this case, is 5.

puts

################## 8 #################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 0 1 2 3 4 10 because 10  is the implicit return value of count_sheep ; it's the last line evaluated.

puts
################### 9 ###################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0 1 2 nil when the method outputs 2, it will exit because of the return. nil is the return value of return.

puts
#################### 10 ######################
# What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 17
  else
    2
  end
end

puts tricky_number
# 17 because the method has an if/else statement and it has a conditional of true which means that
# the if clause will be evaluated every time.

puts
