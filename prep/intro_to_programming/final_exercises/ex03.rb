#3 Use the select method to extract all odd numbers into a new array.

array = [6, 7, 8, 9, 10]

new_array = array.select { |n| n.odd? }
p new_array

# OR

new_array = array.select { |n| n % 2 != 0 }
p new_array
