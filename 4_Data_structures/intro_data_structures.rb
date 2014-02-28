# Lesson 4 - Introduction to data structures

# remembering how to declare an array...
my_array=["What","is","your","name","?"]


# example of accessing the third element of an array...
demo_array = [100, 200, 300, 400, 500]
puts  demo_array[2]

string_array = ["My","name", "is", "Migue"]

# multidimensional arrays...
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |x| puts "#{x}\n" }

my_2d_array = [ ["Hello",1], ["World",2]]

# hashmaps...
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

pets = Hash.new
pets["Diplodocus"] = "Migue"
puts "Pets['Diplodocus'] =  #{pets["Diplodocus"]}"

# looping through data structures...

# looping through arrays & hashes...
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
puts " LOOPING FRIENDS ...."
friends.each { |x| puts "#{x}" }
puts " LOOPING FAMILY ...."
family.each { |x, y| puts "#{x}: #{y}" }

puts "LOOPING PROGRAMMING LANGUAGES..."
languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |element| puts element }

# looping through multidimensional arrays...
puts "LOOPING THROUGH 2D ARRAYS...."
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each { |e| e.each { |x| puts x } }

# looping through hashes...
secret_identities = { "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
 
puts "LOOPING THROUGH SUPER-HEROS" 
secret_identities.each {
    |hero_name, real_name|
    puts "#{hero_name} is actually #{real_name}"
}