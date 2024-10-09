class Payment
  attr_accessor :amount

  def initialize(amount:)
    @amount = amount
  end
end

payment = Payment.new(amount: 500)
p payment.amount  #=> 500

payment.amount = 1000
p payment.amount  #=> 1000
