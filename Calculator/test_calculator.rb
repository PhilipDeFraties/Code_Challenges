require 'minitest/autorun'
require_relative './calculator'
require 'pry'
class BestMatchTest < Minitest::Test
  def test_it_exists_and_has_attrs
    calculator = Calculator.new
    assert_instance_of Calculator, calculator
  end

  def test_it_performs_calculation
    calculator = Calculator.new
    assert_equal 9, calculator.evaluate("4 + 5 * 6")
  end
end
