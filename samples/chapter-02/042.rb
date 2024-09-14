def print_args(a, b, *args)
  puts "位置引数: #{a}, #{b}"
  args.each_with_index do |arg, i|
    puts "可変長引数#{i}: #{arg}"
  end
end

print_args(1, 2, 3, 4)
puts
print_args(1, 2, 'foo', 'bar', :test)
