require 'minitest/autorun'
require_relative './dollar'

class TestMoney < MiniTest::Test
  def test_mulitiplication
    five = Dollar.new(5)
    product = five.times(2)
    assert_equal 10, product.amount
    product = five.times(3)
    assert_equal 15, product.amount
  end
end
