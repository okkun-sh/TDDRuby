class Money
  attr_reader :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def equals(object)
    money = object
    @amount == money.amount && self.currency == money.currency
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  def toString
    @amount + " " + @currency
  end

  def self.dollar(amount)
    Dollar.new(amount, "USD")
  end

  def self.franc(amount)
    Franc.new(amount, "CHF")
  end
end