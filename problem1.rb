require 'minitest/autorun'

class Problem1

  attr_accessor :first, :second

  def initialize first, second
    @first = first
    @second = second
  end

  def solve num
    sum = 0
    (1..num-1).each do |i|
      if i % @first == 0 || i % @second == 0
        sum += i
      end
    end
    sum
  end
end

class Problem1Test < MiniTest::Unit::TestCase
  def test_sum_of_multiples_of_3_and_5
    solver = Problem1.new 3, 5
    answer = solver.solve 10
    assert_equal 23, answer
  end

  def test_sum_of_multiples_of_2_and_4
    solver = Problem1.new 2, 4
    answer = solver.solve 10
    assert_equal 20, answer
  end
end