require 'minitest/autorun'
require_relative 'adder'

class TestAdder < Minitest::Test
  def test_adder
    adder = Adder.new(10,14)
    assert_equal 24, adder.add
  end
end
