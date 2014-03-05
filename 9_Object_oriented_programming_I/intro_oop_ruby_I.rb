# Lesson 9 - Object oriented programming in Ruby (part I)

# CLASSES
# this is the basic code to make a class in Ruby
class Person
	# "initialize" is the point of entry of the class (aka as the constructor)
    def initialize(name, age, profession)
    	# by the "@" notation we can declare member (also called instance) variables in the class
    	@name = name
    	@age = age
    	@profession = profession

    	@@people_count +=1
    end

    # this is the way we can declare variable classes (that is, a variable that is shared for all instances of the class )
    # the syntax is "@@"
    # we can use this kind of variables to get the number of instances of it, for example
    # NOTE!! we MUST INITIALIZE the class variables!!
    @@people_count = 0

    def self.number_of_instances
    	return @@people_count
	end
end

# this is the way we can instantiate classes in Ruby!
matz = Person.new("Yukihiro",31,"Designer")

# this is the way we can access class variables
puts "Number of instances of Person class: #{Person.number_of_instances}"


# INHERITANCE
# some examples...
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

class Application
  def initialize(name)
    @name = name
  end
end

class MyApp < Application
end

# overriding methods...
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
   def fight
       puts "Instead of breathing fire..."
       return super.fight
   end
end

red_dragon = Dragon.new("Red Dragon")
puts red_dragon.fight

=begin
	NOTE: multiple inherance is not allowed in Ruby, 
	that is: one class only inherits from another class
=end
