# The "Histogram" practice...

puts "What are you thinking? "
text = gets.chomp
words = text.split

frequencies = Hash.new(0)

words.each {
    |word|
    frequencies[word]+=1
}

frequencies = frequencies.sort_by{|word, hints| hints}
frequencies.reverse!

frequencies.each {
    |word, hints|
    puts word + " " + hints.to_s
}