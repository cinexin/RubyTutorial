# Exercise "Thith Mean War" for practising the control flow...

# remember to "chomp"...
print "What are you thinking? "
user_input = gets.chomp

# remember the "!" to change the value of "user_input"...
# user_input.downcase!
# but what if we want to preserve the original capitalization...?
downcased_user_input = user_input.downcase
# the ruby methods that end with an "?" return a boolean value...
if (downcased_user_input.include? "s")
    # note!!!  you can't put a space between "gsub!" and "(" 
    user_input.gsub!(/s/,"th")
    user_input.gsub!(/S/,"th")
else
    puts "Nothing to do here!"
end

# remember the #{} to interpolate user variables into a string...
puts "Adios, #{user_input}!"