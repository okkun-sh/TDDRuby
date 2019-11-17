class Money
  attr_reader :amount

  def equals(object)
    money = object
    @amount == money.amount && self.class.equal?(money.class)
  end

  def times(multiplier)
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end
end