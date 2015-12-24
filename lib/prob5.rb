# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def find_smallest
  answer_found = false
  answer = 1
  until answer_found
    if divide_by_all?(answer, 20
      answer_found = true
    else
      answer_found = false
      answer += 1
    end
    puts answer
  end
  answer
end

def divide_by_all?(number, max_number)
  max_number.downto(1).each do |divider|
    return false unless number %  divider == 0
  end

  return true
end

if __FILE__==$0
  p find_smallest
end
