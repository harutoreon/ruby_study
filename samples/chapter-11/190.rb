puts "/tmp/foo.rb: #{File.extname('/tmp/foo.rb')}"                  #=> /tmp/foo.rb: .rb
puts "/tmp/foo.html.erb: #{File.extname('/tmp/foo.html.erb')}"      #=> /tmp/foo.html.erb: .erb
puts "/etc/.settings.yml: #{File.extname('/etc/.settings.yml')}"    #=> /etc/.settings.yml: .yml
puts "/home/user1/.bashrc: #{File.extname('/home/user1/.bashrc')}"  #=> /home/user1/.bashrc: 
