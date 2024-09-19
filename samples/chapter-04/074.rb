p Array(1)
p Array({name: '太郎', age: 18})
p Array(1..10)

def sum_integers(integers)
  Array(integers).sum
end

p sum_integers(1)
p sum_integers([1, 2, 3, 4, 5])
p sum_integers(1..100)
