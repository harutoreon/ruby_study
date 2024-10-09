class Payment
  @@fee = 0

  def initialize(amount:)
    @amount = amount
  end

  def self.fee=(fee)
    @@fee = fee
  end

  def total_amount
    @amount + @@fee
  end
end

payment1 = Payment.new(amount: 500)
payment2 = Payment.new(amount: 1000)
p payment1.total_amount #=> 500
p payment2.total_amount #=> 1000

Payment.fee = 1000
p payment1.total_amount #=> 1500
p payment2.total_amount #=> 2000

Payment.fee = 0

class CreditCard < Payment
end

payment = Payment.new(amount: 500)
credit_card = CreditCard.new(amount: 1000)
p payment.total_amount      #=> 500
p credit_card.total_amount  #=> 1000

Payment.fee = 1000
p payment.total_amount      #=> 1500
p credit_card.total_amount  #=> 2000
