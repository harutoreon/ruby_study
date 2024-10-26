require 'fileutils'

FileUtils.mv('test/foo_bar.rb', 'test/foo.rb')
FileUtils.mv('test/dir/sample.rb', 'test')
FileUtils.mv(['test/dir/foobar.txt', 'test/dir/foobaz.txt'], 'test')
