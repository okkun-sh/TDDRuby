require 'minitest/autorun'
require_relative './dollar'

class TestMoney < MiniTest::Test
  def test_mulitiplication
    five = Dollar.new(5)
    five.times(2)
    assert_equal 10, five.amount
  end
end
