even_numbers = Set[0, 2, 4, 6]
even_numbers.add(8)
puts even_numbers

even_numbers.add(8)
puts even_numbers

even_numbers.merge(Set[10, 12])
puts even_numbers

even_numbers = Set[0, 2, 4, 6, 8, 10, 12]

even_numbers.delete(0)
puts even_numbers

even_numbers.delete_if { |n| n % 4 == 0 }
puts even_numbers
