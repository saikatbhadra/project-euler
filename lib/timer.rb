module Timer
	def timer(&block)
 beginning_time = Time.now
  result = block.call
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
  puts "Output of method is #{result}"
end