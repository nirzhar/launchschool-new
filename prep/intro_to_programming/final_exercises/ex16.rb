# 16 turn it into a new array that consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']

# iterate over a
# split the words
# map the strings to new array
# flatten the new arrray.

# incorrect ####
=begin
new_array = a.each do |x| puts x.split end
new_array.flatten
puts new_array
=end

### Correct LS Solution ######
a = a.map { |pairs| pairs.split }
a = a.flatten
p a
