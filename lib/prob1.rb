def prob1
	correct_multiples = []
	(1...1000).select do |num| 
		(num % 3 == 0)||(num % 5 == 0)
	end.reduce { |sum, num| sum + num }
end

if __FILE__==$0
	puts prob1
end