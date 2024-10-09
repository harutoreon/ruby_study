class Payment
  attr_writer :amount

  def initialize(amount:)
    @amount = amount
  end

  def total_amount
    @amount + 500
  end
end

payment = Payment.new(amount: 500)
p payment.total_amount  #=> 1000

payment.amount = 1000
p payment.total_amount  #=> 1500
