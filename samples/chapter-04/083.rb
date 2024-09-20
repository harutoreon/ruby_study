numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers.inject { |acc, num| acc.to_s + num.to_s }
