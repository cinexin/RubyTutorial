# Review exercises for methods, block and sorting (part 16 to 19)

# ex 16
def welcome
    puts "Welcome to Ruby!"
end

welcome

# ex 17
def welcome_ii (name)
    return "Welcome to Ruby, #{name}!"
end

# ex 18
puts welcome_ii("Migue")


my_array = [1, 2, 3, 4, 5]
my_array.each { |n| puts n**2}

# ex 19
fruits = ["orange", "apple", "banana", "pear", "grapes"]
fruits.sort! { |fruit1, fruit2| fruit2 <=> fruit1 }
puts fruits
