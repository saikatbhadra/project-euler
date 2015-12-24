# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


def palindrome?(number)
  number_string = number.to_s
  number_string == number_string.reverse
end

if __FILE__==$0
  p palindrome?(11)
end
