# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
	arr = []
	string.split('').each_with_index { |e, i| 
		if return_odds == true
			if i.odd?
				arr << e
			end
		else
			if i.even?
				arr << e
			end
		end
	}
	arr.join('')
end
