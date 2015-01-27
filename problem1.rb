require 'minitest/autorun'

class Problem1
  def self.sum_of_multiples_of_3_and_5_below num
    sum = 0
    (1..num-1).each do |i|
      if i%5 == 0 || i%3 == 0
        sum += i
      end
    end
    sum
  end
end

class Project1Test < MiniTest::Unit::TestCase
  def test_sum_of_multiples_of_3_and_5_below_num
    result = Problem1.sum_of_multiples_of_3_and_5_below 10
    assert_equal 23, result
  end
end