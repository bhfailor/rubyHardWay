=begin
from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
indata = File.open(from_file).read()

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to contine, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

# output.close()
# input.close()

# When you concatenate methods the result changes class.
#  i.e. the result of File.write() is Fixnum class
#  the result of File.read() is String class
=end

# output = File.open(ARGV.last, 'w').write(File.open(ARGV.first).read())
# File.open(ARGV.last, 'w').write(File.open(ARGV.first).read())
require 'ex17.rb'
# Had to copy to the $LOAD_PATH, for example:
# sudo cp ex17.rb /usr/local/lib/ruby/vendor_ruby/
