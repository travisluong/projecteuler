require "minitest/autorun"

class Fixnum
  def largest_prime_factor
    n = self
    factor = 2
    lastFactor = 1
    while n > 1
      if n % factor == 0
        lastFactor = factor
        n = n / factor
        while n % factor == 0
          n = n / factor
        end
      end
      factor = factor + 1
    end
    return lastFactor
  end
end

class Problem3Test < Minitest::Unit::TestCase
  def test_largest_prime_factor1
    ans = 10.largest_prime_factor
    assert_equal 5, ans
  end

  def test_largest_prime_factor2
    ans = 13195.largest_prime_factor
    assert_equal 29, ans
  end

  def test_largest_prime_factor3
    ans = 600851475143.largest_prime_factor
    assert_equal 6857, ans
  end
end