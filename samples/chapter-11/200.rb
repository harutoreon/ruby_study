file = File.open('foo.txt', 'a')
file.write('sed do eiusmod tempor incididunt')
file.close

File.open('foo.txt', 'r') do |file|
  puts file.read
end
#=> Lorem ipsum dolor sit amet
#   consectetur adipiscing elit
#   sed do eiusmod tempor incididunt
