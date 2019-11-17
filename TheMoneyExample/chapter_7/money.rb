class Money
  attr_reader :amount

  def equals(object)
    money = object
    @amount == money.amount && self.class.equal?(money.class)
  end
end