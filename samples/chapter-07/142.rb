module Payment
  FEE = 500

  def self.total_amount(amount)
    amount + FEE
  end
end

p Payment::FEE               #=> 500
p Payment.total_amount(500)  #=> 1000
