# Lesson 7 - The Zen of Ruby

# Ruby is so simple and fun to run...maybe not the fastest, but...
ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

# "if" statement in one line
# NOTE: if (condition) instructions IS NOT CORRECT
#		but instructions if (condition) IS CORRECT (and cool)
i_am_fan_of_ruby = true
puts "I'm a Rubyist" if (i_am_fan_of_ruby)

# "unless" statement in one line...
i_am_a_ruby_fan = true
puts "I'm a Rubyist" unless !i_am_a_ruby_fan

# ABBREVIATED IF/ELSE statement...
# doesn't remind you of Java?
i_am_a_ruby_fan = true
puts (i_am_a_ruby_fan == true)?  "I am a Rubyist": "I am a Javaist"

# ABBREVIATED CASE statement (slightly different from the proposed solution)...
puts "Hello there! (english / french / german / finnish)"
greeting = gets.chomp
case greeting.downcase
	when "english" then puts "Hello!"
	when "french" then puts "Bonjour!"
	when "german" then puts "Guten Tag!"
	when "finnish" then puts "Haloo!"
	else puts "I don't know that language"
end

# CONDITIONAL ASSIGNMENTS...
# "||=" means set to this value if the variable hasn't a value yet
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

# this will not set the "favorite book" variable
favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

# this finally will set the variable to whatever we say in the right side
favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

# IMPLICIT RETURN
=begin
	in Ruby, the result of the last instruction in a function is the default return (that is, if we don't do an explicit "return" statement)
=end

def multiple_of_three(n)
   n % 3 == 0 ? "True" : "False"
end

puts multiple_of_three(19)

# SHORT-CIRCUIT EVALUATION
=begin
 Ruby intelligently evaluates the conditional operators...for instance it stops evaluating a "&&" operator if it has evaluated one of his sides to false
=end
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

# THE "EACH" STATEMENT...
# let's print only the even values of this array in one line...
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each {|number| puts number if (number % 2 == 0)}

# ".UPTO" and ".DOWNTO" statements (Yet Another Way of Looping)...
# ".upto" works even with letters! (".downto" NO!)
"L".upto("P")  {
    |letter|
    puts letter
}

100.downto(95)  {
    |number|
    puts number
}

# THE "RESPOND_TO" statement...(this object actually responds to this method?)
age = 26
age.respond_to?(:next)
# note: "next" method for an integer means the inmediate following integer

# THE "<<" operator for PUSHING things into ARRAYS and STRINGS...

alphabet = ["a", "b", "c"]
# alphabet.push("d") 
alphabet << "d"

caption = "A giraffe surrounded by "
# caption += "weezards!" 
caption << "weezards!"

puts alphabet
puts caption

# STRING INTERPOLATION...


