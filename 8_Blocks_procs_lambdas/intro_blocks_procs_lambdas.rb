# Lesson 8 - Blocks, procs and lambdas
# If you only want to take one lesson of Ruby, take this.

# BLOCKS

# let's first take a review of what is a block...
5.times {puts "I'm a block!"}

# the ".COLLECT" statement...
=begin
	The collect method takes a block and applies the expression in the block to every element in an array
=end
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect {|x| x*2 }


# the "YIELD" statement...
=begin
	Why do some methods accept a block and others don't? It's because methods that accept blocks have a way of transferring control from the calling method to the block and back again. We can build this into the methods we define by using the yield keyword.
=end
# check out the example...
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

# we can "YIELD" with PARAMETERS too!
def yield_name(name)
  puts "In the method! Let's yield."
  yield name
  puts "Block complete! Back in the method."
end

yield_name("Migue") {|name| puts "My name is #{name}"}

def double(number) 
    yield number
end

double(5) {
    |n|
    puts n*2
}



# PROCS
=begin
	 "procs" are like "saved blocks", we asign a block code to a variable, and we can use it anywhere calling the proc with a "&"
=end
# example
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new {
    |n|
    n.floor
}

ints = floats.collect(&round_down)

# another example
# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new {
    |height|
    height >= 4
}

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)
puts "Can ride 1: " + can_ride_1.to_s
puts "Can ride 2: " + can_ride_2.to_s
puts "Can ride 3: " + can_ride_3.to_s

# yet another example...
def greeter
    yield
end

phrase = Proc.new {
    puts "Hello there!"
}

greeter(&phrase)

# the "CALL" statement (another way of calling proc's)...
hi = Proc.new {puts "Hello!"}
hi.call

# mixing symbols and procs to do some magic...
# you can convert symbols to procs using that handy little "&"
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)

# LAMBDAS
# an example...
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

# another example...
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda {
    |x|
    x.to_sym
}
symbols = strings.collect(&symbolize)

=begin
	There are two differences between "lambda" and "proc":
	1.- a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
	2.-when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.
=end
# let's check it with an example...

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
puts batman_ironman_lambda

# another lambda example (exercise 15)
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda {
	|item|
	item.is_a? Symbol
}
symbols = my_array.select(&symbol_filter)
puts symbols
