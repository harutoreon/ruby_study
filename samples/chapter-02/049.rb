nums = []

(1..10).each do |num|
  nums.push(num)
end

p nums

nums.freeze

begin
  nums.push(11)
rescue => e
  p e
end
