class Payment
  attr_reader :amount

  def initialize(amount:)
    @amount = amount
  end
end

payment = Payment.new(amount: 500)
p payment.amount  #=> 500
