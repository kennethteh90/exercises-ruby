# puts "Input a number!"
# x = gets.to_i

# if x > 4
#   puts "x is larger than 4"
# elsif x == 4
#   puts "x is exactly 4"
# elsif x < 4
#   puts "x is not larger than 4"
# else
#   puts "oops, think you broke the system  "
# end
#
# case
# when x > 4
#   puts "x is larger than 4"
# when x < 4
#   puts "x is smaller than 4"
# when x == 4
#   puts "x is 4"
# else
#   puts "AHHHHHHHHH"
# end

puts 'Please Input Your Grade!'
grade = gets.chomp
puts grade.class
case grade
when 'A'
  puts 'Well done!'
when 'B'
  puts 'Try harder!'
when 'C'
  puts 'You need help!!!'
else
  puts 'You just making it up!'
end
