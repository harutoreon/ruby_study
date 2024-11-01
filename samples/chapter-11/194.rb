puts File.expand_path('foo.txt')        #=> /Users/user/workspace/study/ruby_study/samples/chapter-11/foo.txt
puts File.expand_path('../foo.txt')     #=> /Users/user/workspace/study/ruby_study/samples/foo.txt
puts File.expand_path('~/foo.txt')      #=> /Users/user/foo.txt
puts File.expand_path('~user/foo.txt')  #=> /Users/user/foo.txt

puts File.expand_path('foo.txt', __dir__)  #=> /Users/user/workspace/study/ruby_study/samples/chapter-11/foo.txt
