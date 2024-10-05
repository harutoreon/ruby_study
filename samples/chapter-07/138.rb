class Payment
  def initialize(amount:)
    @amount = amount
  end
end

payment1 = Payment.new(amount: 500)
payment2 = Payment.new(amount: 1000)

def payment1.total_amount
  @amount + 500
end

p payment1.total_amount  #=> 1000

begin
  p payment2.total_amount
rescue => e
  p e
end
#=> #<NoMethodError: undefined method `total_amount' for an instance of Payment>
