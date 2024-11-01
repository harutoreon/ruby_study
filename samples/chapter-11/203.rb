File.open('./foo.txt') do |file|
  file.each do |line|
    puts "#{file.lineno}: #{line}"
  end
end
#=> 1: Lorem ipsum dolor sit amet,
#   2: consectetur adipiscing elit,
#   3: sed do eiusmod tempor incididunt
