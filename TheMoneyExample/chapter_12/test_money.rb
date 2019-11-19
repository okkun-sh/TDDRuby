require 'minitest/autorun'
require_relative './money'
require_relative './bank'

class TestMoney < MiniTest::Test
  def test_mulitiplication
    # Object class cannot compare equivalence.
    # So, compared by amount.
    five = Money.dollar(5)
    assert_equal Money.dollar(10).amount, five.times(2).amount
    assert_equal Money.dollar(15).amount, five.times(3).amount
  end

  def test_equality
    assert_equal true, Money.dollar(5).equals(Money.dollar(5))
    assert_equal false, Money.dollar(5).equals(Money.dollar(6))
    assert_equal false, Money.franc(5).equals(Money.dollar(5))
  end

  def test_currency
    assert_equal "USD", Money.dollar(1).currency
    assert_equal "CHF", Money.franc(1).currency
  end

  def test_simple_addtion
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum,"USD")
    assert_equal Money.dollar(10).amount, reduced.amount
  end
end
