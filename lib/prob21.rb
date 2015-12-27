# Amicable Numbers
# Problem 21

def proper_divisors(num)
  factors = prime_factors(num)



end

# prime factorization
def prime_factors(num)
  prime_factors = Hash.new(0)
  factor = 2
  remainder = num

  while (remainder > 1) && (factor <= remainder)
    while (remainder % factor == 0)
      prime_factors[factor] += 1
      remainder /= factor
    end

    factor += 1
  end
  prime_factors
end


# p prime_factors(4*5*9*121 )






