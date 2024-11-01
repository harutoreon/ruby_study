File.open('./foo.txt') do |file|
  loop {
    if file.eof?
      puts '読み終わりました'
      break
    end

    puts file.readline
  }
end
#=> Lorem ipsum dolor sit amet
#   consectetur adipiscing elit
#   sed do eiusmod tempor incididunt
#   読み終わりました

File.open('./foo.txt') do |file|
  p file.readlines
end
#=> ["Lorem ipsum dolor sit amet\n", "consectetur adipiscing elit\n", "sed do eiusmod tempor incididunt"]

File.open('./foo.txt') do |file|
  contents = file.read
  p contents

  contents = file.read
  p contents
end
#=> "Lorem ipsum dolor sit amet\nconsectetur adipiscing elit\nsed do eiusmod tempor incididunt"
#   ""

p File.read('./foo.txt')
#=> "Lorem ipsum dolor sit amet\nconsectetur adipiscing elit\nsed do eiusmod tempor incididunt"
