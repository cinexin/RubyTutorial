# Review exercises of Data structures with Ruby (exercises 14,15,16)

my_array = [[1, "Line 1 of code"], [2, "Line 2 of code"], [3, "Line 3 of code"]]

my_hash = {
    "car" => "coche",
    "dog" => "perro",
    "table" => "mesa",
    "tea" => "té"
}

lunch_order = { "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}


lunch_order.each {
    |name, favourite_meal|
    puts "#{favourite_meal}"
}

puts "a cooler way..."
lunch_order.each {
    |name, favourite_meal|
    puts "#{name}'s favourite meal is #{favourite_meal}"
}