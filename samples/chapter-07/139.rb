class Payment
  def initialize(amount:)
    @amount = amount
  end

  def total_amount
    total_amount_private
  end

  private

  def total_amount_private
    @amount + 500
  end
end

payment = Payment.new(amount: 500)
p payment.total_amount  #=> 1000

begin
  p payment.total_amount_private
rescue => e
  p e
end
#=> #<NoMethodError: private method `total_amount_private' called for an instance of Payment>