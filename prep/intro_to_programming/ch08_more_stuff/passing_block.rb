=begin

We want to pass an argument to the method. Here we pass the number into the
take_block method and use it in our bloc.call.

Because our method can accept a block, we can pass in a bleock of code using do/end.

=end

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do | num |
  puts "Blocks being called in the method! #{num}"
end

####################
