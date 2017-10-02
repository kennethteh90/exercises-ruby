nums = [1, 2, 3, 3, 4, 5, 5, 6]

# nums  .sort!

for x in nums
  initial_length = nums.length
  modified_nums = nums.dup # duplicate the array
  modified_nums.delete(x) # remove all instances of the item in the modified array
  # puts nums
  # puts modified_nums
  final_length = modified_nums.length
  if final_length <= initial_length - 2
    # check if at least 2 items are the same, so at least 2 items are deleted
    z = true
    break
  else
    z = false
  end
  z
end

# puts z
