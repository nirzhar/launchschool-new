# Procs are blocks that are wrapped in a proc object and stored in a variable to be passed.

talk = Proc.new do
  puts "I am talkin' here!"
end

talk.call

###############

#procs can also take arguments

talk = Proc.new do | name |
  puts "I'm talking to #{name}."
end

talk.call("Mayalu")

# passing proc

def take_proc(proc)
  [ 1, 2, 3, 4, 5 ].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method."

end

take_proc(proc)
