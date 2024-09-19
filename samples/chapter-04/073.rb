array = [1, 4, 3, 8, 7, 6, 7]
p array.sort
p array

array.sort!
p array

array = [1, 4, 3, 8, 7, 6, 7]
p array.sort { |a, b| b <=> a }

array = ['インコ', 'ゾウ', 'アシナガバチ']
p array.sort
p array.sort { |a, b| a.length <=> b.length }
p array.sort { |a, b| b.length <=> a.length }

array = ['インコ', 'ゾウ', 'アシナガバチ']
p array.sort_by { |elem| elem.length }

array = ['インコ', 'ゾウ', 'アシナガバチ']
p array.sort_by { |elem| elem.length }.reverse
