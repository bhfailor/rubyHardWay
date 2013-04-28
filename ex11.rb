print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weigh? "
weight = gets.chomp()

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

=begin
# example from: http://rubylearning.com/satishtalim/getting_input.html
# STDOUT.flush clears out the output buffer
# p005methods.rb
# gets and chomp
puts "In which city do you stay?"
STDOUT.flush
city = gets.chomp
puts "The city is " + city
=end
