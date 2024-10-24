3.times { puts rand }
#=> 0.5231229485020524
#   0.23482656668332336
#   0.6040334780367377

puts "0〜4の間の乱数"
3.times { puts rand(5) }
#=> 0〜4の間の乱数
#   3
#   4
#   4

puts "10〜20の間の乱数"
3.times { puts rand(10..20) }
#=> 10〜20の間の乱数
#   18
#   15
#   13

puts "1回目"
srand(100)
3.times { puts rand(1..100) }
puts "2回目"
srand(100)
3.times { puts rand(1..100) }
#=> 1回目
#   9
#   25
#   68
#   2回目
#   9
#   25
#   68
