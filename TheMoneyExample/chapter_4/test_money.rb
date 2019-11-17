require 'minitest/autorun'
require_relative './dollar'

class TestMoney < MiniTest::Test
  def test_mulitiplication
    five = Dollar.new(5)

    # Object class cannot compare equivalence.
    # So, compared by amount.
    assert_equal Dollar.new(10).amount, five.times(2).amount
    assert_equal Dollar.new(15).amount, five.times(3).amount
  end

  def test_equality
    assert_equal true, Dollar.new(5).equals(Dollar.new(5))
    assert_equal false, Dollar.new(5).equals(Dollar.new(6))
  end
end
