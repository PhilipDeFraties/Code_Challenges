class Calculator
  attr_accessor :tokens, :nums, :operators
  def initialize
    @tokens = []
    @nums = [],
    @operators = []
  end

  def evaluate(string)
    @nums = string.scan(/\d+/)
    @operators = string.scan(/\W\D/)
  end

  def priority
    return 1 if value == '+' || value == '-'
    return 2 if value == '*' || value == '/'
  end
end
