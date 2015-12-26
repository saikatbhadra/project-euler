# Prime number
# Problem 10

def prime_list(max_number)
  primes = (0..max_number).to_a
  primes[0] = primes[1] = nil
  factor_range = 2..(Math.sqrt(max_number).to_int)
  factor_range.each do |factor|
    ((factor ** 2)..max_number).step(factor) { |m| primes[m] = nil }
  end

  primes.compact
end

if __FILE__==$0
  p prime_list(2e6.to_int).reduce(0,:+)
end
