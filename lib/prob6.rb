# Sum square difference
# Problem 6

def square_of_sum(number)
  (1..number).inject{ |sum,x| sum + x} ** 2
end

def sum_of_squares(number)
  (1..number).map { |x| x ** 2}.inject{|sum,x| sum + x}
end

if __FILE__==$0
  p square_of_sum(100) - sum_of_squares(100)
end
