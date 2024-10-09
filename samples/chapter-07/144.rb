module Payable
  def total_amount(amount)
    amount + 500
  end
end

class Payment
  extend Payable
end

p Payment.total_amount(500)  #=> 1000
p Payment.singleton_methods  #=> [:total_amount]
