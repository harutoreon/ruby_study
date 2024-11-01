require 'fileutils'

FileUtils.cp('test/foo.rb', 'test/foo_bar.rb')
FileUtils.cp(['test/foobar.txt', 'test/foobaz.txt'], 'test/dir')
