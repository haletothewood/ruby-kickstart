# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best solved recursively
#
# Example:

two_d = [
   [ 1,  2,  3,  4, 5],
   [16, 17, 18, 19, 6],
   [15, 24, 25, 20, 7],
   [14, 23, 22, 21, 8],
   [13, 12, 11, 10, 9],
 ]
 order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(arrays, loop = 0, &block)

	x_limit = arrays[0].length - 1 # number of elements in each nested array
	y_limit = arrays.length - 1 # number of arrays in array

	return if y_limit/2 < loop || x_limit/2 < loop # this means your at the end of the spiral

	loop.upto (x_limit - loop) do |x| # for the top row, left to right
		block.call arrays[loop][x]
	end

	(loop + 1).upto (y_limit - loop) do |y| # for the right hand side top to bottom
		block.call arrays[y][x_limit - loop]
	end

	(x_limit - 1 - loop).downto loop do |x| # for the bottom row right to left
		block.call arrays[y_limit - loop][x]
	end

	(y_limit - 1 - loop).downto (loop + 1) do |y| # for the left hand side bottom up
		block.call arrays[y][loop]
	end

	spiral_access(arrays, loop + 1, &block) # recursion to go down the spiral

end

spiral_access two_d do |i| 
	order << i
end

puts order
