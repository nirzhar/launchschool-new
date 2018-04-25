# optional _parameters.rb

def greeting(name, color, options = {})
  if options.empty?
    puts "Hi, my name is #{name}, and I'm a #{color}. "
  else
    puts "Hi, my name is #{name}, I have #{color}. I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
  end
end

greeting("Mayalu", "Redhead")
greeting("Dorje", "Darkhair", age: 17, city: "Kathmandu")
greeting("Chimé", "Brown hair", age: 14, city: "Kathmandu")


###############################
