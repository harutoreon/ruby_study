rad = Math::PI / 4
puts "π/4 ≒ #{rad.round(4)}"  #=> π/4 ≒ 0.7854

puts "sin(π/4) ≒ #{Math.sin(rad).round(4)}"  #=> sin(π/4) ≒ 0.7071
puts "cos(π/4) ≒ #{Math.cos(rad).round(4)}"  #=> cos(π/4) ≒ 0.7071
puts "sin(π/4) = #{Math.tan(rad).round(4)}"  #=> sin(π/4) = 1.0

puts "arcsin(1/√2) ≒ #{Math.asin(1/Math.sqrt(2)).round(4)}"  #=> arcsin(1/√2) ≒ 0.7854
puts "arccos(1/√2) ≒ #{Math.acos(1/Math.sqrt(2)).round(4)}"  #=> arccos(1/√2) ≒ 0.7854
puts "arctan(1) = #{Math.atan(1).round(4)}"                  #=> arctan(1) = 0.7854
