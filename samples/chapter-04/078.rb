numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odds = numbers.filter { |num| num.odd? }

p numbers
p odds

numbers.select! { |num| num.even? }
p numbers
