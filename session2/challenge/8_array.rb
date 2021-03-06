# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

=begin
def got_three?(array)
	array.each_with_index do |num, i| 
		if num == num[i + 1] and num[i + 1] == num[i + 2]
			true
		else
			false
		end
	end
end
=end

def got_three?(array)
	array.each_cons(3) do |a, b, c|
		if a == b && b == c
			return true
		else
			false
		end
	end
end
