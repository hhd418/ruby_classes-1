class Car
	def initialize
		@fuel = 10.0
		@distance = 0
		puts "the initialize method is running automatically"
	end

	def drive(miles)
		if (@fuel - miles/20.0) < 0 
			puts "You can't drive this far. You need more fuel!"
		else	
			@distance = @distance + miles
			@fuel = @fuel - (miles/20.0)
		end
	end

	def fuel_up
		if @fuel == 10 
			puts "You are already full!"
		else
			fuel_needed = 10.0 - @fuel 
			puts "You needed #{fuel_needed} gallons and it cost you $#{fuel_needed * 3.5}."
			@fuel = 10
		end
	end

	def get_info
		puts "I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end
end