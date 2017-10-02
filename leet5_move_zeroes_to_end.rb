# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  a = nums.select { |y| y == 0 } #produce an array that has all the zeroes from nums array
  nums.delete(0) #remove zeroes from nums
  nums.push(a) #push the temporary array onto nums
  nums.flatten! #flatten nums
end

# puts move_zeroes([0, 1, 0, 3, 12])
