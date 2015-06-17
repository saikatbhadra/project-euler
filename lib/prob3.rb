# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def prime_factors(num)
	factors = []
	factor = 2
	remainder = num

	while (remainder > 1) && (factor <=  num)
		while (remainder % factor == 0)
			factors << factor
			remainder /= factor
		end

		factor += 1
	end
	factors
end

def largest_prime_factor(num)
	prime_factors(num)[-1]
end

if __FILE__==$0
	p largest_prime_factor(600851475143)
end
