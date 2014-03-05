# Lesson 9 - Object Oriented Programming (I)
# Review exercises (from ex 16 to 20 in CodeAcademy course)

# Exercises 16, 17
class Message
	@@messages_sent = 0
   def initialize(from, to) 
       @from = from
       @to = to

       @@messages_sent +=1 
   end
end

# Exercise 18
my_message = Message.new("cineexin","codeacademy")

# Exercises 19 & 20

class Email < Message
    def initialize(from,to)
        super
    end
end