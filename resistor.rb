def decode_resistor_colors(bands)
  resistor_code = { 'black' => 0, 'brown' => 1, 'red' => 2, 'orange' => 3, 'yellow' => 4, 'green' => 5, 'blue' => 6, 'violet' => 7, 'gray' => 8, 'white' => 9, 'gold' => 'gold', 'silver' => 'silver' }
  band_array = bands.split(' ') # convert string to array
  converted_array = band_array.map { |x| resistor_code[x] } # convert words to numbers
  raw_resistance = (converted_array[0] * 10 + converted_array[1]) * 10 ** (converted_array[2])

  # convert resistance to k, M
  if raw_resistance < 1000
    resistance = raw_resistance
  elsif raw_resistance < 1000000
    resistance = "%g" % (raw_resistance / 1000.0)
    factor_letter = 'k'
  elsif raw_resistance >= 1000000
    resistance = "%g" % (raw_resistance / 1000000.0)
    factor_letter = 'M'
  end
  # check resistance of resistor
  if converted_array[3] == 'gold'
    tolerance = 5
  elsif converted_array[3] == 'silver'
    tolerance = 10
  else
    tolerance = 20
  end
  return "#{resistance}#{factor_letter} ohms, #{tolerance}%"
end

puts decode_resistor_colors("brown black black")
puts decode_resistor_colors("brown black brown gold")


# "brown black black"                "10 ohms, 20%"
# "brown black brown gold"          "100 ohms, 5%"
# "red red brown"                   "220 ohms, 20%"
# "orange orange brown gold"        "330 ohms, 5%"
# "yellow violet brown silver"      "470 ohms, 10%"
# "blue gray brown"                 "680 ohms, 20%"
# "brown black red silver"           "1k ohms, 10%"
# "brown black orange"              "10k ohms, 20%"
# "red red orange silver"           "22k ohms, 10%"
# "yellow violet orange gold"       "47k ohms, 5%"
# "brown black yellow gold"        "100k ohms, 5%"
# "orange orange yellow gold"      "330k ohms, 5%"
# "red black green gold"             "2M ohms, 5%"
