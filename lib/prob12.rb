# Highly divisible triangular number
# Problem 12

# Formulat
# n * (n + 1) / 2

# get first triangular value with factors > min_factors
def first_triangular(min_factors)
  num = 1
  num += 1 until triangular_num_factors(num) > min_factors

  triangular_num(num)
end

def triangular_num(num)
  num * (num + 1) / 2
end

def triangular_num_factors(num)
  factors = triangular_prime_factors(num)
  factors.values.reduce(1) { |num_factors,power| num_factors * (power+1) }
end

# prime factorization of a triangular number num
def triangular_prime_factors(num)
  factors = prime_factors(num)

  # add n + 1 factors
  prime_factors(num+1).each do |factor, power|
    factors[factor] += power
  end

  # take out one 2
  if factors[2] == 1
    factors.delete(2)
  else
    factors[2] -= 1
  end

  factors
end

# prime factorization
def prime_factors(num)
  prime_factors = Hash.new(0)
  factor = 2
  remainder = num

  while (remainder > 1) && (factor <=  num)
    while (remainder % factor == 0)
      prime_factors[factor] += 1
      remainder /= factor
    end

    factor += 1
  end
  prime_factors
end

p first_triangular(500)
