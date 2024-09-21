animals = ['Ant', 'Bird', 'Cat', 'Dog', 'Fox', 'Bear']

indexed_animals = animals.each_with_object({}) do |animal, hash|
  hash[animal[0]] ||= []
  hash[animal[0]].push(animal)
end

p indexed_animals
