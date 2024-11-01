File.open('./foo.txt', 'a') do |file|
  bytes_written = file.write("consectetur", " ", "adipiscing", " ", "elit", "\n")
  puts "#{bytes_written}バイト書き込みました"
end
#=> 28バイト書き込みました

File.open('./foo.txt', 'a') do |file|
  file.puts(['consectetur adipiscing elit', 'sed do eiusmod tempor incididunt'])
end
#=> Lorem ipsum dolor sit amet,
#   consectetur adipiscing elit
#   sed do eiusmod tempor incididunt
