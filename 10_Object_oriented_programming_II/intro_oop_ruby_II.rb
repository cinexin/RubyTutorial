# Lesson 10 - Object Oriented Programming (Part II)

class Dog 

	def initialize(name, breed)
		@name = name
		@breed = breed	
	end	

	# public stuff can be accessed from outside the class...
	# all we declare between "public" and "end" will be declared as public
	# NOTE! by default, things are public
	public
	def bark
		puts "Woof!"
	end

	# private stuff can't be accessed from outside the class...
	# this means: private methods only can be called from within the class
	private
	def id
		@id_number = 12345
	end	

end

# "attr_reader" and  "attr_writer"
class Person
	def initialize(name, job)
	    @name = name
	    @job = job
	end
  	
	#def name
    #	@name
  	#end
  
	#def job=(new_job)
    #	@job = new_job
  	#end

  	# we can rewrite this with "attr_reader" and "attr_writer"...
  	attr_reader :name
  	#attr_writer :job

  	# and what if we want to read & write an attribute...?
  	attr_accessor :job
  	# is equal to...
  	#attr_writer :job
	#attr_reader :job  	
end

# MODULES...
# scope resolution "::" means that we want the constant "PI" in the "Math" module
puts Math::PI

# some modules are brought for us by default, some others not...so we "require" them explicitily
require 'date'
puts Date.today


# we have another way of importing modules...that's the "include" statement (do you remember the "import" from JAva?)...
class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
puts acute.cosine