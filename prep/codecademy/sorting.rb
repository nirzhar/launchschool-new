# Ruby's built-in sorting library (which implements a few of these algorithms).

my_array = [3, 4, 8, 1, 9, 4, 0, ]

my_array.sort!

puts my_array

# [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, ]


books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook | secondBook <=> firstBook }
