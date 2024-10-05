class Payment
  def initialize(amount:)
    @amount = amount
  end

  def total_amount
    total_amount_protected
  end

  protected

  def total_amount_protected
    @amount + 500
  end
end

payment = Payment.new(amount: 500)
p payment.total_amount  #=> 1000

begin
  p payment.total_amount_protected
rescue => e
  p e
end
#=> #<NoMethodError: protected method `total_amount_protected' called for an instance of Payment>
