# yield

def fruit_name(name)
  puts "In the method. We can yield from here."
  yield("Banana") #n in the method call is now "Banana."
  puts "We're (this puts) back in the method now."
  yield("Mango") #n in the method call is now "Nango."
  puts "Above can be the end of the yield, and we're back in the method."

  fruit_name("Lapsi") { |n| puts "I really love #{name}, but it's hard to find here."}
end

def double(trouble)
  puts "Be careful going to the zoo without your pants on."
  yield("bitten")
  puts "Last time you went to the pool..."
  yield("showered me with saliva")
  puts "Now what do I say?"
end

double("trapped") { |trouble| puts " I would lie to go toothe zoo, but I don't want tobe #{trouble}."}
