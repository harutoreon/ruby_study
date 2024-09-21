p Set[0, 0, 2, 2, 4, 4]
p Set.new([1, 1, 3, 3, 5, 5])
p [1, 1, 2, 2, 3, 3].to_set

numbers = [1, 2, 3, 4, 5, 6]
numbers.each do |e|
  puts "#{e}: #{e.even? ? 'even' : 'odd'}"
end
