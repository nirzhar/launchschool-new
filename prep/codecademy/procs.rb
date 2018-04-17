
=begin

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new { |x| x.floor }
# The .floor method rounds a float (a number with a decimal)
#down to the nearest integer.

# Write your code above this line!
ints = floats.collect(&round_down)
print ints


=end

###############################

=begin

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

=end

##################
=begin


def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)

=end

##################

=begin


nums = [ 1,2,3,4,5,6]
strings = nums.map(&:to_s)

puts strings
# ["1", "2", "3", "4", "5" ]

=end

#########################

ages = [23, 45, 7, 100, 109, 38, 17, 14]

under_100 = Proc.new { |x| x < 100 }
youngsters = ages.select(&under_100)

puts youngsters.sort
#[ 7, 14, 17, 23, 38, 45 ]
