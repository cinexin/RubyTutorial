# Exercise 13 - See? That's how we can simulate multiple inheritance in Ruby!!
module MartialArts
	
	def swordsman
		puts "I'm a swordsman."
	end	
end

class Ninja
	include MartialArts
	
	def initialize(clan)
		@clan = clan
	end
end

class Samurai
	include MartialArts
	
	def initialize(shogun)
		@shogun = shogun
	end
end

ninja = Ninja.new ("Red clan")
samurai = Samurai.new ("Showgun")
ninja.swordsman
samurai.swordsman
