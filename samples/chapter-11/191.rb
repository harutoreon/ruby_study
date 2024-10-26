puts File.exist?('./test/foo.rb')   #=> true
puts File.exist?('./test/foo.txt')  #=> false
puts Dir.exist?('./test/dir')       #=> true
puts Dir.exist?('./test/bar')       #=> false
