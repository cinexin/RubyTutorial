# "Virtual Computer" practise (Lesson 9 - Object Oriented Programming. Part I)

class Computer
    
    @@users = {}
    
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end

    def create(filename)
	    time = Time.now
	    @files[filename] = time
	    puts "A new file named #{filename} has been created"
    end

    # this is a "class" method...you can think of "static" methods if you know Java...
    def Computer.get_users
        return @@users
    end
end

my_computer = Computer.new("cineexin", "notmypassword")