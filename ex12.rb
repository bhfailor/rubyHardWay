require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
  f.each_line {|line| p line}
  puts f.base_uri         # <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
  puts f.content_type     # "text/html"
  puts f.charset          # "iso-8859-1"
  puts f.content_encoding # []
  puts f.last_modified    # Thu Dec 05 02:45:02 UTC 2002
end

=begin
How are require and include different?
  "I think that include just sticks the code in verbatim and require loads a subprogram before executing the main program"
  Actually, the above does not seem to be correct.  Require is similar to load, it seems.  Include is used to include a module in a class definition.  If it is not included in a class definition it is included in Object, which applies to all objects, I think.  There is a description here:
http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/16071

Can you require a script that doesn't contain a library specifically?
  "I do not think so." I think I am wrong about that.  I can try it when I have the time. . .
Where are the directories on my system where the libraries are found?
  It looks like it is stored in the variable $LOAD_PATH:
> puts $LOAD_PATH
/usr/local/lib/ruby/site_ruby/1.9.1
/usr/local/lib/ruby/site_ruby/1.9.1/i686-linux
/usr/local/lib/ruby/site_ruby
/usr/local/lib/ruby/vendor_ruby/1.9.1
/usr/local/lib/ruby/vendor_ruby/1.9.1/i686-linux
/usr/local/lib/ruby/vendor_ruby
/usr/local/lib/ruby/1.9.1
/usr/local/lib/ruby/1.9.1/i686-linux
=> nil

=end
