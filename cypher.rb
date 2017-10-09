def encode(message, key)
  alphabets = [*('a'..'z')]
  numbers = [*(1..26)]
  # key.to_s.chars.map(&:to_i) if ruby 2.3
  conversion_hash = Hash[alphabets.zip(numbers)]
  m = message.chars.map { |x| conversion_hash[x] }

  m.map.with_index { |z, y|
    z + key.digits.reverse[y % key.to_s.length]
  }

end

puts encode("scout", 1939)
