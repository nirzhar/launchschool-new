#9 Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.

# 2. Add to this hash the key:value pair `{e:5}`

# 3. Remove all key:value pairs whose value is less than 3.5
h = { a: 1, b:2, c:3, d:4 }

# 1
puts h[:b]

puts

#2 ################

h[:e] = 5
puts h
puts

#3  ###############

h.each  do |k, v|
  if v < 3.5
    h.delete(k)
  end
end

puts

### OR ########

h.delete_if { |k, v| v <3.5 }
puts h

#### OR #########

h.delete_if do |k, v|
  v < 3.5
end
