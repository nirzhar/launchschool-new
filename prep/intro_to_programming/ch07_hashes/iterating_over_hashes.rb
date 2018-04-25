# iterating over hashes

person = {name: "Mayalu", hair: "Red", face: "Beautiful"}

person.each do | key, value |
  puts "Mayalu's #{key} is #{value}."
end

# Mayalu's name is Mayalu
#  Mayalu's hair is Red.
#  Mayalu's face is Beautiful.
