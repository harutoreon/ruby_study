puts Math.sqrt(2)  #=> 1.4142135623730951

include Math
puts sqrt(3)       #=> 1.7320508075688772

module Payment
  def total_amount(amount)
    amount + 500
  end

  module_function :total_amount
end

p Payment.total_amount(500)  #=> 1000

include Payment
p total_amount(1000)         #=> 1500
