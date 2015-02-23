require "minitest/autorun"

class Problem4
  def initialize num_digits
    @num_digits = num_digits
  end

  def solve
    max_factor = 10**@num_digits - 1
    product = max_factor * max_factor

    # iterate from max product down to 1
    product.downto(1) do |i|

      # if it is a palindrome
      if is_palindrome i

        # get all factors
        factors = divisors_of i
        # iterate through each factor and divide i by factor
        factors.each do |f|
          x =  i / f

          # if x length is equal to num digit, we found our answer
          if x.to_s.length == @num_digits
            return i
          end
        end
      end
    end
    return nil
  end

  def is_palindrome int
    str = int.to_s
    str == str.reverse
  end

  # return all factors that are of length num_digit
  def divisors_of num
    (1..num).select { |n| num % n == 0 && n.to_s.length == @num_digits }
  end
end

class Problem4Test < Minitest::Unit::TestCase
  def test_largest_palindrome_product2
    solver = Problem4.new 2
    ans = solver.solve
    assert_equal 9009, ans
  end
end