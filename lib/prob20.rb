# Factorial digit sum
# Problem 20

p (1..100).to_a.reduce(1,:*).to_s.chars.map(&:to_i).reduce(0,:+)
