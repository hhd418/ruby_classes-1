class BankAccount
	
	def initialize(fname="drew", lname="montgomery")
		@fname = fname
		@lname = lname
		@balance = 0
		@cc_debt = 0
	end

	def statement
		puts "#{@fname} #{@lname} has a balance of $#{@balance} and a credit card bill of $#{@cc_debt}."
	end

	def deposit(amt)
		@balance = @balance + amt
	end

	def withdraw(amt)
		@balance = @balance - amt
	end

	def purchase(amt)
		@cc_debt = @cc_debt + amt
	end

	def pay_bill(amt)
		if @cc_debt == 0
				puts "You have a 0 balance. No payment is needed."
		else
			if (amt > @cc_debt)
				puts "You are tyring to overpay we are only going to accept $#{@cc_debt} and your credit card balance is now 0."
				@balance = @balance - @cc_debt
				@cc_debt = 0
			else
				if (@balance - amt) < 0
					puts "Insufficient funs! We are charging you $10."
					@balance = @balance - 10
				else
					@cc_debt = @cc_debt - amt
					@balance = @balance - amt
				end
			end
		end
	end

	def monthly_interest
		@cc_debt = @cc_debt * 1.015
		@balance = @balance * 1.0003
	end

end

