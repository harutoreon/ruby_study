p (1..5).to_a
p (1...5).to_a
p Range.new(1, 5).to_a

puts "(1..5).include?(5) => #{(1..5).include?(5)}"
puts "(1..5).cover?(5) => #{(1..5).cover?(5)}"
puts "(1...5).include?(5) => #{(1...5).include?(5)}"
puts "(1...5).cover?(5) => #{(1...5).cover?(5)}"
puts "(1..10).include?(3..5) => #{(1..10).include?(3..5)}"
puts "(1...10).cover?(3..5) => #{(1..10).cover?(3)}"

p (1..).include?(10000)
p (1..).include?(-10000)
p (nil..nil).cover?(10000)
p (nil..).cover?(-10000)

# このコードはTypeErrorを出力する予定だが、trueが出力される。
# 原因は不明
# ChatGPTはTypeErrorの回答、Preplexity AIはtrueの回答で分かれている。
begin
  p (nil..).include?(-10000)
rescue => e
  p e
end

(1..3).each { |i| puts i }
puts (1..100).inject(:+)

p ('a'..'e').to_a

time_range = Time.new(2022, 1, 2)..Time.new(2022, 1, 3)
puts time_range.include?(Time.new(2022, 1, 2, 23, 0, 0))

require 'date'

data_range = Date.new(2022, 1, 2)..Date.new(2022, 1, 4)
data_range.each { |date| puts date }

begin
  (1.0..10.0).each { |float| puts float }
rescue => e
  p e
end

begin
  (Time.new(2022, 1, 2)..Time.new(2022, 1, 3)).each { |time| puts time }
rescue => e
  p e
end
