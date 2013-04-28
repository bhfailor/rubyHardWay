first, second, third, fourth, fifth = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Your fourth variable is: #{fourth}"
puts "Your fifth variable is: #{fifth}"

=begin
# Single quotes are stripped
$ ruby ex13.rb one two '"3"' "4.0" "'the' price of tea"
The script is called: ex13.rb
Your first variable is: one
Your second variable is: two
Your third variable is: "3"
Your fourth variable is: 4.0
Your fifth variable is: 'the' price of tea
=end
