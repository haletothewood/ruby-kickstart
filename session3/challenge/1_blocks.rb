# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
=begin
def reverse_map(*args,&block) # *args takes all passed arguments &block takes the block
	args.reverse.map(&block) # map and do this the block that was passed
end
=end

def reverse_map(*args,&block)
	block.call args.reverse.map
end


