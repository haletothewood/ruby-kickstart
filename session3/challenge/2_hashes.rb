# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
	hash = {}
	1.upto num do |x|
		next if x % 2 == 0 # we only want odd number keys
		@arr = Array.new(x) { |y| y + 1 } # creates a new array with ALL the numbers upto x
		evens = @arr.select { |z| z % 2 == 0 } #select even numbers
		hash[x] = evens # inserting x as the key and evens array as the value
		end
	hash
end 
