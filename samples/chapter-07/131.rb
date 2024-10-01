class Payment
  def initialize(amount:)
    puts amount
  end
end

Payment.new(amount: 500)  #=> 500
