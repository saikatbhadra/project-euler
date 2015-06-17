#Even Fibonacci numbers
#Problem 2
#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fibonacci(limit)
	# calculates fibonacci up to limit
	return [] if limit < 1
	return [1] if limit == 1
	return [1,2]  if limit == 2

	fibonacci_nums = [1,2]
	completed = false
	while !completed
		new_number = fibonacci_nums[-1] + fibonacci_nums[-2]
		if new_number > limit
			completed = true
		else
			fibonacci_nums << new_number 
		end
	end

	fibonacci_nums
end

def fibonacci_sum(limit)
	fibonacci(limit).select{ |x| x.even?}.inject{ |sum, x| sum + x }
end

if __FILE__==$0
	p fibonacci_sum(4e6)
end


	