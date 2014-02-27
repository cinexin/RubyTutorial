# Lesson 3 - "Loops & Iterators" Review exercises (from 14 to 18)

# reviewing WHILE Loops

puts "=============================="
puts "WHILE LOOP (Ex 14)"
num = 1
while num<=50
    print "#{num} "
    num+=1
end
puts ""
puts "END WHILE LOOP (Ex 14)"

puts "==============================="

puts "==============================="
puts "UNTIL LOOP (Ex 15)"
num = 1
until num>50
    print "#{num} "
    num+=1
end
puts ""
puts "END UNTIL LOOP (Ex 15)"
puts "==============================="

puts "==============================="
puts "FOR LOOP (Ex 16)"
num = 1
for num in 1..50
    print "#{num}"
    num+=1
end
puts ""
puts "END FOR LOOP (Ex 16)"
puts "==============================="

puts "==============================="
puts "LOOP LOOP (Ex 17)"
i=1
loop do
    print "Ruby!"
    i+=1
    break if i == 31
end
puts ""
puts "END LOOP LOOP (Ex 17)"
puts "==============================="

puts "==============================="
puts "TIMES LOOP (Ex 17)"

30.times {
    print "Ruby!" 
}
puts ""
puts "END TIMES LOOP (Ex 17)"
puts "==============================="
