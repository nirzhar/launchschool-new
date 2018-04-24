arr = [ 1, 3, 5, 7, 9, 11 ]
number = 3
if arr.include?(number)
  puts "#{number} is in the array."
end

############################


=begin
 will the following programs return? What is the value of arr after each?

1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)

   =end

   =begin

   # arr = arr.product(Array(1..3)) is:
   # arr = arr.product[1, 2, 3]
   #[[ "b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 3 two dimensional array
   #arr.first is:
   #["b", 1]
   # arr.first.last is:
   1
   # arr.first.delete(arr.first.last) is:
   # returned item is deleted item, 1
   # arr now is "b"
   # [["b"],["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

   2.
   [Array(1..3)]is:
   # [[1, 2, 3]]
   arr = arr.product([Array(1..3)])
   # [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
   arr.first is
   #["b", [1, 2, 3]]
   arr.first.last is:
   # [1, 2, 3]
   arr.first.delete(arr.first.last) # delete will return the deleted item.
   [1, 2, 3]
   now, arr is:
   [["b"], ["a", [1, 2, 3]]]

=end


##################

# 3. Return the word, "example" from the following array.

arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

########################
#4. What wil the following methods return?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
# 3 the value of 5 is inthe index of 3. Only the first index is returned.

arr.index[5]
#noMethodError

arr[5]
# 8 8 is he value in the index 5.


###########################################

=begin

Write a program that iterates over an array and builds a new array that is the result
of incrementing each value in the original array by a value of 2. You should have
two arrays at the end of this program, The original array and the new array you've
created. Print both arrays to the screen using the p method instead of puts.

=end

arr = [1, 2, 3, 4, 5, 6, 9]
new_arr = []

arr.each do |x|
 new_arr.push(x += 2)
end


p arr
p new_arr
