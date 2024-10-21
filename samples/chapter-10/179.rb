puts "√0 = #{Math.sqrt(0)}"      #=> √0 = 0.0
puts "√2 ≒ #{Math.sqrt(2)}"      #=> √2 ≒ 1.4142135623730951
puts "√100 = #{Math.sqrt(100)}"  #=> √100 = 10.0

begin
  Math.sqrt(-1)
rescue => e
  p e
end
#=> #<Math::DomainError: Numerical argument is out of domain - sqrt>
