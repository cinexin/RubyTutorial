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