def print_kwargs(a, b, **kwargs)
  puts "位置引数: #{a}, #{b}"

  kwargs.each_with_index do |(k, v), i|
    puts "引数#{i}: #{k} => #{v}"
  end
end

print_kwargs(1, 2, foo: 'v', bar: 'v')
puts

kwargs = { hoge: 'v', fuga: 'v' }
print_kwargs(1, 2, **kwargs)
