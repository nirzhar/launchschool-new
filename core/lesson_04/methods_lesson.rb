#
puts puts
[1, 2, 3].select do |num|
  num + 1
  puts num
end

puts puts
######################

 # Enumarable#all?

 [a, 2, 3].all? do |num|
   num > 2
 end
 # => false
puts puts
######################

 { a: 'ant', b: 'bear', c: 'cat' }.all? do |key, value|
   value.length >= 3
 end
 # => true
puts puts
#######################

 [1, 2, 3].each_with_index do |num, index|
   puts "The index of #{num} is#{index}."
end
# The index of 1 is 0.
# The index of 2 is 1.
# The index of 3 is 2.
# => [1, 2, 3]

puts puts
########################

{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end
# The index of [:a, "ant"] is 0.
# The index of [:b, "bear"] is 1.
# The index of [:c, "cat"] is 2.
# => { :a => "ant", :b => "bear", :c => "cat" }

puts puts
#########################

[1, 2, 3].each_with_object([]) do |num, array|
  array << pair.last
end
# => ["ant", "bear", "cat"]

puts puts
##########################

{ a: "ant", b: "bear", c: "cat" }.each_with_object({} do |(key, value), hash|
  hash[value] = key
end
# => { "ant" => :a, "bear" => :b, "cat" => :c }

puts puts
##########################

[1, 2, 3].first
# =>  1

puts puts
########################

{ a: "ant", b: "bear", c: "cat" }.first(2)
# => [[:a, "ant"], [:b, "bear"]]

puts puts
###########################

[1, 2, 3].include?(1)
# => true

puts puts
############################

{ a: "ant", b: "bear", c: "cat" }.include?("ant")
# =>  false #.include only check keys, not values!

puts puts
############################

{ a: "ant", b: "bear", c: "cat" }.include?(:a)
# =>  true

puts puts
#############################

[1, 2, 3].partition do |num|
  num.odd?
end
# =>  [[1, 3], [2]]

putsputs
##############################

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd  # => [1, 3]
even # => [2]

puts puts
#############################

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]



# To transform these arrays back into a hash, we can invoke Array#to_h.

long.to_h # => { :b => "bear" }
short.to_h  # => { :a => "ant", :c => "cat" }

puts puts
##############################
