# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def find_smallest(max)
  # compare existing table and add only in factors with higher power
  all_factors = Hash.new(0)
  (2..max).each do |number|
    factors = get_factor_table(number)
    factors.keys.each do |factor|
      if all_factors[factor] < factors[factor]
        all_factors[factor] = factors[factor]
      end

    end
  end

  # get product of all factors
  product = 1
  all_factors.each do |factor, power|
    product *= factor ** power
  end

  product
end

def get_factor_table(number)
  factors = prime_factors(number)
  table = Hash.new(0)
  factors.each do |factor|
    table[factor] += 1
  end

  table
end

#TODO could be speed up
def prime_factors(number)
  factors = []
  factor = 2
  while number > 1
    while (number % factor == 0)
      factors.push(factor)
      number /= factor
    end

    factor += 1
  end

  factors
end

if __FILE__==$0
  p find_smallest(20)
end
