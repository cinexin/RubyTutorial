# Lesson 10 - Object Oriented Programming (part II) 
# Final Practise: Banking on Ruby

class Account
	attr_reader :name
	attr_reader :balance

	def initialize(name,balance=100)
		@name = name
		@balance = balance
	end

	private
	
	def pin
		@pin = "1234"
	end

	def pin_error
		return "Access denied: incorrect PIN."
	end

	public
	
	def display_balance(pin_number)
		
		if (pin_number == pin)
			puts "Balance: #{@balance} rubies."			
		else
			puts pin_error	
	 	end	 	
	end 

	def withdraw(pin_number, amount)

		if (pin_number != pin)
			puts pin_error
			return
		end

		if (amount.to_i<=0)
			puts "Error! you must enter a positive amount of rubies."
		elsif (amount.to_i>@balance)
			puts "Sorry, you don't have this amount of rubies :-("
		else
			@balance-=amount.to_i
			puts "Withdrew #{amount} of rubies. New balance: #{balance} rubies."
		end			
	end

	def deposit(pin_number, amount)

		if (pin_number == pin)
			@balance+=amount
			puts "Added #{amount} rubies to your account. New balance #{balance} rubies."
		else
			puts pin_error
		end
	end


end


require 'io/console'


checking_account = Account.new("Migue")

puts "*****************************************************"
puts "****************** A BANK OF RUBIES *****************"
puts "*****************************************************"
puts ""

loop do
	puts "Enter an option: "
	puts "1. Display balance of rubies"
	puts "2. Withdraw rubies of my account"
	puts "3. Deposit rubies in my account"
	puts "4. Quit"
	print "> "
	entered_option = gets.chomp

	case entered_option
		when "1"
			print "Enter your PIN: "
			entered_pin = STDIN.noecho(&:gets).chomp
			puts ""
			checking_account.display_balance(entered_pin)
		when "2"
			puts "How many rubies do you want to get from your account? "
			rubies_to_withdraw = gets.chomp
			print "Enter your PIN: "
			entered_pin = STDIN.noecho(&:gets).chomp
			puts ""
			checking_account.withdraw(entered_pin, rubies_to_withdraw)
		when "3"
			puts "How many rubies do you want to deposit in your account? "
			rubies_to_deposit = gets.chomp
			print "Enter your PIN: "
			entered_pin = STDIN.noecho(&:gets).chomp
			puts ""
			checking_account.deposit(entered_pin, rubies_to_deposit)
		when "4"
			puts "Bye bye! Enjoy your rubies!"
		else 
			puts "Invalid option"
	end
	
	break if (entered_option == "4")
	puts "Press ENTER to continue..."
	gets.chomp
end	