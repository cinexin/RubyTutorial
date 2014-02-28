# Lesson 5 - Introduction to methods, block & sorting

=begin
	*********** METHODS *************
=end
# this is how we "def"ine a method...
def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10


def greeting
    puts "Hello world" 
end
greeting 

# to_a means "to array"
def array_of_10
  puts (1..10).to_a
end
array_of_10

# methods with arguments...

def cubertino(n)
  puts n ** 3
end
cubertino(8)

# methods with "n" arguments...
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
what_up("What up", "Justin", "Ben", "Kevin Sorbo")

# methods return things...

def add(a,b) 
    return a + b
end

puts "3 + 6 is: " + add(3,6).to_s

# more examples...
def greeter (name)
    return "Hello " + name
end

def by_three?(number)
    if (number % 3 == 0)
        return true
    else
        return false
    end
end


=begin
	**************** BLOCKS *****************
=end

# method that capitalizes a word
# NOTE!! The version of Ruby i'm running now (1.8.7) doesn't understant string[0], 
# instead of it, use string[0,1]
def capitalize(string) 
  puts "#{string[0,1].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0,1].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
books.sort!

# the <=> comparator
# returns -1 if the first part comes before the second, 0 if the parts are equals, and 1
# if the second part comes before the first
# in this case, it returns "1", as book_2 < book1
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"
book_1 <=> book_2

# trick to sort arrays in ascendant / descendant ways...
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
# Sort your books in descending order, in-place below
books.sort! { |firstBook, secondBook| secondBook <=> firstBook  }