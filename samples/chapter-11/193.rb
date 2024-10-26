p Dir.glob('test/*.rb')      #=> ["test/bar.rb", "test/foo.rb", "test/sample.rb"]
p Dir.glob('test/**/*.txt')  #=> ["test/dir/foo.txt", "test/foobar.txt", "test/foobaz.txt"]
