class Payment
  def self.total_amount(amount)
    amount + 500
  end
end

p Payment.total_amount(500)   #=> 1000
p Payment.total_amount(1000)  #=> 1500
