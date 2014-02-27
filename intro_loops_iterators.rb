# 3. Loops & Iterators

# simple example, just don't miss to increment the index!
puts "WHILE LOOP"
i = 0
while i < 5
  puts i
  # Add your code here!
  i = i + 1
end
puts "END WHILE LOOP"

# the "until" statement...
puts "UNTIL LOOP"
counter = 1
until counter > 10
  puts counter
  # this is the abbreviation to increment a counter...but Ruby doesn't understand the classical "++"
  counter +=1
end
puts "END UNTIL LOOP"

puts "ANOTHER WHILE LOOP"
counter = 1
while counter < 11
  puts counter
  counter +=  1
end
puts "END OF ANOTHER WHILE LOOP"

# the "for" statement...
puts "FOR LOOP"
for num in 1...10
  puts num
end
puts "END FOR LOOP"

=begin
	remember: 
		".." ->  include the last value of the range
		"..." -> don't include the last value of the range
=end 
puts "ANOTHER FOR LOOP"
for num in 1..15
  puts num
end
puts "END OF ANOTHER FOR LOOP"

puts "YET ANOTHER FOR LOOP"
for num in 1...21
    puts num
end 
puts "END OF YET ANOTHER FOR LOOP"

puts "LOOP LOOP"
i = 20
loop do
  i -= 1
  print "#{i} "
  break if i <= 0
end
puts "END OF LOOP LOOP"

puts "LOOP WITH 'NEXT'"
=begin
	BE CAREFUL! if you put the "next" clause in the very first line of the loop, you might fall in an infinite loop
	of course, it didn't happen to me... XDD
=end
i = 20
loop do
	i -= 1
    next if i%2!=0
  	print "#{i} "
  	break if i <= 0
end
puts "END OF LOOP WITH 'NEXT'"

puts "LOOPING USING ARRAYS..."
# declaring arrays...
my_array  = [1,2,3,4,5]

# ...and looping into them...
my_array.each do |x|
  x += 10
  print "#{x} "
end
puts ""
# yeah, it's cool

puts "------------"
# another example
odds = [1,3,5,7,9]
odds.each do |x|
   x *= 2
   print "#{x} "
end
puts ""
puts "END LOOPING USING ARRAYS..."

puts "TIMES LOOP"
20.times {print "NO!!!!"}
puts "END TIMES LOOP"


