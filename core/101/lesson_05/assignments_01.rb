
def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

puts puts

#########################

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end

# 1
# 3
# => [[1, 2], [3, 4]]

=begin
The Array#each method is being called on the multi-dimensional array [[1, 2], [3, 4]].
Each inner array is passed to the block in turn and assigned to the local variable arr.
The Array#first method is called on arr and returns the object at index 0 of the
current array - in this case the integers 1 and 3, respectively. The puts method
then outputs a string representation of the integer. puts returns nil and, since
this is the last evaluated statement within the block, the return value of the
block is therefore nil. each doesn't do anything with this returned value though,
and since the return value of each is the calling object - in this case the
nested array [[1, 2], [3, 4]] - this is what is ultimately returned.

That's

=end

=begin
What is the type of action being performed (method call, block, conditional, etc..)?
What is the object that action is being performed on?
What is the side-effect of that action (e.g. output or destructive action)?
What is the return value of that action?
Is the return value used by whatever instigated the action?

=end


puts puts
#####################

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end


=begin

The main difference to understand in this example is the return value of the block.
This is because puts is no longer the last expression in the block, thereby
changing the block's return value from nil to the integer returned by arr.first.
The block's return value is then used by map to perform the transformation,
replacing the inner array with an integer. Finally, map returns a new array with
two integers in it.

=end
puts puts

#######################

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# 18
# 7
# 12
# => [[18, 7], [3, 12]]

=begin
Array each method is called on my_arr array. Each element in the inner array
is passed into the block and assigned the variable arr. Method each is called
on the arr array and asigned the variable num. each returns the original array
each of the num is evaluated to see if it is > 5. If true, puts method outputs
the number. Since puts is the last statement in the block, the return value of
the block is nil.

Line | Action | Object |Side Effect | REturn V | Is Return v used?
1 | variable assignment | n/a | None | [[18, 7], [3, 12]] | No

1 | method call(each)| [[18, 7], [3, 12]]| None | The calling object | Yes, by var assignment to my_arr

1-7 | outer block execution | Each sub-array |None| Each sub-array | No

2 | nethod call each| Each sub-array | None| CAlling object: sub-array in current iteration| YEs, used to determine return value of outer vblock.
2-6| inner block execution| Element of the sub-array in that iteration| None | nil| No
3 comparision(>) | Element of the sub-array in that iteration|Boolean| YEs, evaluated by if
3-5| conditional(if)| Element of the sub-array in the iteration| None| nil| YEs, used to determinereturn val of inner block
4 | method call(puts) |Element of the sub-array in the iteration| Outputs a stringrepresentationof an integer| nil|YEs, used to determinereturn val of inner block.

There are 4 return values to pay attention to here: the return value of both calls to each and the return value of both blocks. When determining what these return values will be it's important to understand how the method used in the example actually works. In this case we're using each, which ignores the return value of the block. This lets us quickly see that the value of my_arr will be the array that each was called on.

Because each ignores the block's return value, this was a relatively straight forward example.
 Y
 puts puts

=end

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

=begin
  on line 1, Array method map is called on the object, [[1, 2], [3, 4]], which
  is passed into the block and assignd the variable arr. The inner block returns
   a new value, which is used by the first map method for transformation.
   In the second line of code, map is called on each of the sub-array of arr.
   The inner block returns the result of num * 2, which is used by the inner map
   to transform the sub-array. Line 3 performs a calculation and returns an integer,
   which is used by the inner map for transformation.
=end

puts puts
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end

# => [[27], ["apple"]]

puts puts
