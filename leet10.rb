# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  if !nums.find_index(target).nil?
    nums.find_index(target)
  elsif !nums.find_index { |i| i > target }.nil?
    nums.find_index { |i| i > target }
  else
    nums.length
  end
end

# Tests
puts search_insert([1,3,5,6], 5) # 2
puts search_insert([1,3,5,6], 2) # 1
puts search_insert([1,3,5,6], 7) # 4
puts search_insert([1,3,5,6], 0) # 0
