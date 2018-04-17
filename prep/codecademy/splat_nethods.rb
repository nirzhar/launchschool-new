#Codecademylesson 6.Splat


def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

##################################

def weather(message, *cities)
  cities.each { |city | puts"#{message}, #{city}?" }
end

weather("How's the weather in", "Kathmandu", "London", "Atlanta")

##################################

def books(author, *title)
  puts " #{ author }"
  title.each {| title | puts " #{title}."}
end

books("Dzogchen Pnlop Rinpoche has written", "Rebel Buddha", "Mahamudra and Dzogchen", "Emotional Rescue", "and many other books")
