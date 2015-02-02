require "minitest/autorun"

class Problem2
  def initialize options
    @under = options[:under]
  end

  def solve
    previous = 0
    current = 1
    sum = 0
    loop do
      temp = current
      current += previous
      previous = temp
      break if current >= @under
      sum += current if current % 2 == 0
    end
    sum
  end
end

class Problem2Test < Minitest::Unit::TestCase
  def test_even_fibonacci_numbers
    solver = Problem2.new :under => 10
    answer = solver.solve
    assert_equal 10, answer
  end
end

puts Problem2.new(:under => 4000000).solve