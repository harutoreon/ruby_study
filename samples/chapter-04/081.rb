numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p numbers.any? { |num| num >= 11 }
p numbers.any? { |num| num >= 10 }
p [].any?
