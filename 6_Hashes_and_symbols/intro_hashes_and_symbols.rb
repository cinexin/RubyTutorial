# Lesson 6 - Introduction to Hashes and Symbols

my_hash = Hash.new

matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do
    |field, value|
    puts value
end


# "nil" is a special word in Ruby that means "Nothing there"
creatures = { "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}

puts creatures["mike"]


# this means that if we try to access a non-existent key in the array, it gives you the default value "Mike"
no_nil_hash = Hash.new ("Mike")
puts no_nil_hash["hello"]

# SYMBOLS...

# first note that "symbol" is not "string"
puts "STRING ID Object in Ruby: " +  "string".object_id.to_s
puts "SYMBOL ID Object in Ruby: " + :symbol.object_id.to_s

my_first_symbol = :starmonkey

=begin

Symbols make good hash keys for a few reasons:

    - They're immutable, meaning they can't be changed once they're created;
    - Only one copy of any symbol exists at a given time, so they save memory;
    - Because of the two above reasons, hashes that use symbols instead of strings as keys work faster. (Check out the Hint for more info if you're interested.)

=end
symbol_hash = {
    :name=>"Migue",
    :twitter=>"cineexin",
    :github=>"cinexin"
}


strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

i = 0
strings.each {
    |s|
    symbols[i] = s.to_sym
	# you can use ".to_sym" or ".intern" 
    i+=1
}

# ":" notation instead of rocket(=>) notation...works only since Ruby 1.9!
# note!! by using this notation, you're telling Ruby the keys all are symbols!!
movies = {
    braindead:"Your mother has eaten my dog!!",
    cannibal_holocaust:"Your friend has eaten my journalist",
    the_exorcist:"The devil has eaten my daughter"
}

