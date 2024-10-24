array1 = [1, 2, 3]
puts "array1 = #{array1}"  #=> array1 = [1, 2, 3]
puts "順列: #{array1.permutation(2).to_a}"  #=> 順列: [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]
puts "組合せ: #{array1.combination(2).to_a}"  #=> 組合せ: [[1, 2], [1, 3], [2, 3]]

array2 = [1, 2, 2]
puts "array2 = #{array2}"  #=> array2 = [1, 2, 2]
puts "順列: #{array2.permutation(2).to_a}"  #=> 順列: [[1, 2], [1, 2], [2, 1], [2, 2], [2, 1], [2, 2]]
puts "組合せ: #{array2.combination(2).to_a}"  #=> 組合せ: [[1, 2], [1, 2], [2, 2]]
