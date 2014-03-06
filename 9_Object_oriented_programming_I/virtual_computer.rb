# "Virtual Computer" practise (Lesson 9 - Object Oriented Programming. Part I)
require 'io/console'

class Computer
    
    @@users = {}
    
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
        puts "Logged in successfully as #{username}"
    end

    def create(filename)
	    time = Time.now
	    @files[filename] = time
	    puts "A new file named #{filename} has been created"
    end

    def delete(filename) 
    	if (@files[filename] != nil)
    		@files.delete(filename)
    		puts "File #{filename} deleted from your computer"
    	else
    		puts "#{filename} not found in the computer"
    	end
    end

    def list 
    	@files.each {
    		|file, time|
    		puts file + "	" + time.to_s
    	}
    end
    # this is a "class" method...you can think of "static" methods if you know Java...
    def Computer.get_users
        return @@users
    end

    def Computer.list_users
    	puts "Registered users in all machines: "
    	@@users.each {
    		|username, password|
    		puts username
    	}
    end
end



puts "====================================================="
puts "------- WELCOME TO THE RUBY VIRTUAL COMPUTER --------"
puts "====================================================="
puts ""
print "Username: "
user_name = gets.chomp
print "Password: "
password = STDIN.noecho(&:gets).chomp
puts ""

my_computer = Computer.new(user_name, password)

loop do
	print "#{user_name} > "
	command = gets.chomp
	
	case command
		
		when "help"
			puts "'ls': list your files"
			puts "'touch: creates a file in your computer"
			puts "'rm: delete a file of your computer"
			puts "'help: this little help"
			puts "'exit: logout from the virtual machine'"

		when "ls"
			my_computer.list

		when "touch"
			print "Tell me the name of the file you want to create: "
			filename = gets.chomp
			my_computer.create(filename)

		when  "rm"
			print "Tell me the name of the file to delete: "
			filename = gets.chomp
			my_computer.delete(filename)

		when "exit"
			puts "Bye bye, #{user_name}"
	end

	break if command == "exit"	
end
