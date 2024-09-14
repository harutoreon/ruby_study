object = nil

unless object.nil?
  p object.upcase
end

obj1 = nil
obj2 = 'not nil'

p obj1&.upcase
p obj2&.upcase

begin
  p nil&.upcase.reverse
rescue => e
  p e
end

p nil&.upcase&.reverse
