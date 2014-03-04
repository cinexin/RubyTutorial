# Lesson 7 - Zen of Ruby
# Refactoring review exercises (from ex 15 to 20)

# Exercise 15
#if 1 < 2
#  puts "One is less than two!"
#end
puts (1<2)? "One is less than two!":""
#or
puts "One is less than two!" if (1<2)

# Exercise 16
#if 1 < 2
#  puts "One is less than two!"
#else
#  puts "One is not less than two."
#end
puts (1<2)? "One is less than two!":"One is not less than two"

# Exercise 17
puts "What's your favorite language?"
language = gets.chomp

#if language == "Ruby"
#  puts "Ruby is great for web apps!"
#elsif language == "Python"
#  puts "Python is great for science."
#elsif language == "JavaScript"
#  puts "JavaScript makes websites awesome."
#elsif language == "HTML"
#  puts "HTML is what websites are made of!"
#elsif language == "CSS"
#  puts "CSS makes websites pretty."
#else
#  puts "I don't know that language!"
#end

case language
	when "Ruby" then puts "Ruby is great for web apps!"
	when "Python" then puts "Python is great for science."
	when "JavaScript" then puts "JavaScript makes websites awesome."
	when "HTML" then puts "HTML is what websites are made of!"
	when "CSS"	 then "CSS makes websites pretty."
	else puts "I don't know that language!"
end

# Exercise 18
favorite_animal||="Turtle"

# Exercise 19
def square(n)
	n**2
end	

puts square(2245)

# Exercise 20
#for i in (1..3)
#  puts "I'm a refactoring master!"
#end
3.times {puts "I'm a refactoring master!"}
