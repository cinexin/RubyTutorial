# Lesson 6 - Hashes & Symbols
# "A night at the movies" exercise
# This is an improved version of the proposed exercise ;-)

movies = {
	Trainspotting: 5
}

def check_correct_rating?(rating)
	if (rating >=0 && rating <=5)
		return true
	else
		return false	
	end
end

loop do 
	puts "Choose an option (add/update/display/delete/quit)"
	choice = gets.chomp

	# the "case" statement...
	case choice.downcase
		when "add"
			puts "Tell me the title of the movie you want to add: " 
			title = gets.chomp
			title = title.to_sym
			if ( movies[title] == nil )
				puts "From 0 to 5, what rating do you give to this movie? " 
				rating = 0
				loop do
					rating = gets.chomp
					rating = rating.to_i
					break if ( check_correct_rating?(rating) == true)
					puts "Please, tell me a rating between 0 and 5"
				end
				movies[title] = rating
			else
				puts "The movie already exists!"
			end
		when "update"
			puts "Tell me the title of the movie you want to update: "
			title = gets.chomp
			title_sym = title.to_sym
			if ( movies[title_sym] == nil)
				puts "Ups! The movie is not in the collection!"
			else
				puts "Ok, tell me the new rating for #{title}: "
				loop do
					rating = gets.chomp
					rating = rating.to_i
					break if ( check_correct_rating?(rating) == true)
					puts "Please, tell me a rating between 0 and 5"
				end
				movies[title_sym] = rating
			end
		when "display"
			movies.each {
				|movie, rating|
				puts "#{movie}: #{rating}"
			}
		when "delete"
			puts "What movie do you want to delete? "
			title = gets.chomp
			title = title.to_sym
			if (movies[title]!=nil)
				movies.delete(title)
				puts "#{title.to_s} movie deleted from the collection"
			else
				puts "#{title.to_s} isn't in the movie collection"
			end
		when "quit"
			puts "Bye bye"
		else
			puts "Wrong option! The options are: (add/update/display/delete/quit)"
	end
	break if (choice == "quit")
end
puts movies
