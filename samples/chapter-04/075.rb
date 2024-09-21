names = ['Alice', 'Bob', 'Carol', 'Eve']
new_array = names.map { |name| name.length }

p new_array
p names

names.map! { |name| name.length }

p names
