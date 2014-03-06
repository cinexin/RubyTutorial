# Lesson 10 - Object Oriented Programming (part II) - Review exercises (from 15 to 18)

# Ex 15 & 16
class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public 
  def print_status
      puts "All systems go!"
  end

  private 
  def password
  	return 12345
  end
end

# Ex 17
module Languages
	FAVE = "Java"
end
# Ex 18
class Master
    include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory