# Special Pythagorean triplet
# Problem 9

def pythagorean_triplet?(a,b,c)
  a ** 2 + b ** 2 == c ** 2
end

def find_pythagorean_triplet(sum)
  (1...sum).each do |a|
    (a+1...sum).each do |b|
      c = sum - a - b
      return [a,b,c] if (c > b) && pythagorean_triplet?(a,b,c)
    end
  end

  return nil
end

p find_pythagorean_triplet(1000).inject(:*)
