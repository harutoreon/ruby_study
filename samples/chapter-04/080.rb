numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p numbers.all? { |num| num.odd? }
p numbers.all? { |num| num <= 10 }
p [].all?
