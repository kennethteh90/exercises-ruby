require 'prime'
# @param {Integer} num
# @return {Boolean}

def is_ugly(num)
  return false if num == 0 # check if 0, because prime_division failes on 0
  prime_factors = Prime.prime_division(num, Prime::Generator23.new) # find prime factors
  prime_factors = prime_factors.map { |v| v[0] } # only return first element of nested array
  if num == 1 # workaround for 1 as ugly
    true
  elsif num < 0 # apparently, negative numbers are all not ugly
    false
  elsif prime_factors.max > 5 # check that there are no prime factors above 5
    false
  else
    true
  end
  # puts prime_factors
  # puts "\n"
end

# is_ugly(6)
# is_ugly(8)
# is_ugly(1)
# is_ugly(14)
