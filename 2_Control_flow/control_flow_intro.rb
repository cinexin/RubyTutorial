# basic conditional statements...
if (2 == 2)
    puts "You're getting too obvious"
else
    puts "wtf??! your cpu has gone crazy!"
end

# elsif statement...
if (2 > 2)
    puts "Nope"
elsif (2==2)
    puts "So obvious"
else
    puts "wtf??!"
end

# the "strange" unless statement...
=begin this means: unless hungry is true, i'll print out "I'm writing Ruby...", 
but if it's set to true..."Time to eat!"
=end
hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

# basic comparator operators...
is_true = (2 != 3)
is_false = (2 == 3)

test_1 = 17 > 16
test_2 = 21 <= 30
test_3 = 9 >= 9
test_4 = -11 < 4

# logical operators...
# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true

# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false

# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false

# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true