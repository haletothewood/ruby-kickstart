# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
	attr_accessor :beers

	def initialize(beers)
		beers = 0  if beers < 0
    	beers = 99 if beers > 99
    	self.beers = beers
	end

	def print_song
		beers.downto 1 do |i|
		stanza(i)
		end
	end

	def stanza(i)
		if i == 0
			return ""
		else
			puts "#{num_to_eng(i)} #{bottle(i)} of beer on the wall,"
			puts "#{num_to_eng(i)} #{bottle(i)} of beer,"
			puts "Take one down, pass it around,"
			puts "#{num_to_eng(i-1)} #{bottle(i-1)} of beer on the wall."
		end
	end

	def bottle(i)
		i == 1 ? 'bottle' : 'bottles'
	end

	def num_to_eng(n)
		singles = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
		teens = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
		tens = ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
		ones = ["", "-one", "-two", "-three", "-four", "-five", "-six", "-seven", "-eight", "-nine"]

		if n < 10
			n == 1 ? singles[n] : singles[n]
		elsif n < 20
			return teens[n % 10]
		else
			return tens[n / 10 - 2] + ones[n % 10]
		end
	end

end


			
