module Payable
  FEE = 500

  def initialize(amount:)
    @amount = amount
  end

  def total_amount
    @amount + FEE
  end
end

class Payment
  include Payable
end

p Payable::FEE                           #=> 500
p Payment.new(amount: 500).total_amount  #=> 1000
