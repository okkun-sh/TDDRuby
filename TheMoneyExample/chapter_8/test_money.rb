require 'minitest/autorun'
require_relative './dollar'
require_relative './franc'

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
    assert_equal true, Money.franc(5).equals(Money.franc(5))
    assert_equal false, Money.franc(5).equals(Money.franc(6))
    assert_equal false, Money.franc(5).equals(Money.dollar(5))
  end

  def test_franc_mulitiplication
    five = Money.franc(5)
    assert_equal Money.franc(10).amount, five.times(2).amount
    assert_equal Money.franc(15).amount, five.times(3).amount

  end
end
