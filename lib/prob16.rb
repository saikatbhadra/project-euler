# Powder digit sum
# Problem 16

def digit_sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

p digit_sum(2 ** 1000)



