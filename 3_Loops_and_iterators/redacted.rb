# Loops & Iterators - The "Redacted" app
print "Enter your text: "
text = gets.chomp
print "Enter the word: "
redact = gets.chomp

# this returns an array with all the words separated by a space
words = text.split(" ")

# "each" loop
words.each do |w|
    if (w == redact)
        print "REDACTED "
    else
        print "#{w} "
    end   
end