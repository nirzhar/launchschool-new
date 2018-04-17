=begin

 Two ways to create hashes:
1. Hash Literal Notation:
new_hash = { "one" => 1}

and

2. Hash Constructor Notation:
new_hash = Hash.new


we can use strings as Ruby hash keys, but it's beter to use symbols.

menagerie = { :fozes => 2,
:giraffes => 1,
:cats => 10 }

there can be multiple strings with different values, but only one symbol at a given time.

.bject_id method gets the ID of an object. This is how Ruby knows if two objects are the same object.

symbols used primarily as hash keys or for referencing method names.

symbols are immutable; can't be changed after they are created.
only one copy exists at a time, so saves memory.
symbols as keys are faster than strings as keys.

Converting to symbol:

"Rinpoche".to_sym
# :Rinpoche

Converting to strings:
:guru.to_s
# "guru"

=end

=begin

1.
We have an array of strings we'd like to later use as hash keys, but we'd rather they be symbols.

Create a new variable, symbols, and store an empty array in it.
Use .each to iterate over the strings array.
For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.
Print the symbols array.
Check the hint for a refresher on .each and .push.

=end

=begin
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols[]
strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols

###############################################

# Has Movies:

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end

=end


#####################

=begin

movies = {
  StarWars: 4.8,
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil?
  	puts "What rating does the movie have? "
  	rating = gets.chomp
  	movies[title.to_sym] = rating.to_i
    puts "The #{title}has been added with a rating of #{rating}."
   else
    puts "The movie already exixts in the hash."
  end

when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end

=end

#######################  Practice CRUD ###############

books = {
  "Mahamudra": "Tibetan",
  "Tibetan Book Of The Dead": "Tibetan",
  "Dzogchen": "Tibetan",
  "Words Of My Perfect Teacher": "Tibetan",
  "Zen Mind": "Zen",
  "Three Vehicles Of Buddhism": "Theravadin"
}

puts "What would you like to do -  Add, Display, Update, or Delete a book? "
answer = gets.chomp.downcase

case answer
when "add"
  puts "Enter the title of the book to add to the list. "
  title = gets.chomp
  if books[title.to_sym].nil?
    puts "What school does this title belong to? "
    school = gets.chomp
    books[title.to_sym] = school.to_sym
    puts "#{title} has been added to the list under #{school}."
  else
    puts "This book already exists in the catalogue."
  end

when "update"
  puts "Which book would you like to update?"
  answer = gets.chomp.downcase
  if books[answer.to_sym].nil?
    puts "Enter the category for the book."
    school = gets.chomp
    books[title.to_sym] = school
  else
    puts "This title does not exist in the catalogue."
  end
else
  puts "Another book."
end
