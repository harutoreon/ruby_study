def select(array, &block)
  result = []
  array.each do |item|
    result << item if block.call(item)
  end
  result
end

array = [1, 2, 3, 4, 5]
p array.select { |number| number.odd? }
p select(array) { |number| number.odd? }

def select(array)
  result = []
  array.each do |item|
    result << item if yield(item)
  end
  result
end

array = [1, 2, 3, 4,5]
p select(array) { |number| number.odd? }

def select(array)
  return array unless block_given?

  result = []
  array.each do |item|
    result << item if yield(item)
  end
  result
end

array = [1, 2, 3, 4, 5]
p select(array)
