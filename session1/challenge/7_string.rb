# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	arr = ''
	string.size.times do |i|
		if i != 0
			if string[i-1] == 'r' || string[i-1] == 'R'
				arr << string[i]
			end
		end
	end
	arr
end
