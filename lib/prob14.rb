# Longest Collatz sequence
# Problem 14

$collatz_length = {}

def collatz_sequence_length(num)
  unless $collatz_length[num]
    if num == 1
      $collatz_length[1] = 1
    elsif num % 2 == 0
      $collatz_length[num] = collatz_sequence_length(num / 2) + 1
    else
      $collatz_length[num] = collatz_sequence_length(3*num + 1) + 1
    end
  end
  $collatz_length[num]
end

def collatz_sequence(num)
  sequence = [num]
  until sequence.last == 1
    if sequence.last % 2 == 0
      sequence << sequence.last / 2
    else
      sequence << 3*sequence.last + 1
    end
  end

  sequence
end

def max_collatz_number(max_num)
  max_length = 0
  max_number = nil
  (1...max_num).each do |num|
    length = collatz_sequence_length(num)
    if length > max_length
      max_length = length
      max_number = num
    end
  end

  max_number
end


p max_collatz_number(1_000_000.to_i)


