numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
evens = numbers.reject { |num| num.odd? }
p numbers
p evens

numbers.reject! { |num| num.even? }
p numbers
