class Payment
  def initialize(amount:)
    @amount = amount
  end

  def total_amount
    @amount + fee
  end

  def fee
    0
  end
end

class CreditCard < Payment
  def fee
    super
  end
end

class CashOnDelivery < Payment
  def fee
    500
  end
end

p CreditCard.new(amount: 1000).total_amount      #=> 1000
p CashOnDelivery.new(amount: 1000).total_amount  #=> 1500
