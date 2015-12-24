# Prime number
# Problem 7

def prime_number(number)
  primes_list = []
  test_number = 2
  while primes_list.length < number
    primes_list << test_number if prime?(test_number)
    test_number += 1
  end
  primes_list.last
end

def prime?(number)
  (2..Math.sqrt(number).to_int).each do |factor|
    return false if number % factor == 0
  end

  true
end

if __FILE__==$0
  p prime_number(10001)
end
