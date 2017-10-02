# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n < 1
  return true if n == 1
  return true if n == 2
  until n == 2
    if n.odd?
      x = false
      break
    elsif n.even?
      n /= 2
      x = true
      end
  end
  x
end

puts is_power_of_two(3)
puts is_power_of_two(6)
puts is_power_of_two(8)
puts is_power_of_two(16)
puts is_power_of_two(7)
puts is_power_of_two(18)
