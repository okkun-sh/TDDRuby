class Money
  attr_reader :amount

  def equals(object)
    money = object
    @amount == money.amount
  end
end