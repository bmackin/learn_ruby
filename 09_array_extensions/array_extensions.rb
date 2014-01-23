class Array
	
	def sum
		result = 0
		each { |number| result += number}
		result
	end

	def square
	map { |x| x ** 2 }
	end

	def square!
	map! { |x| x ** 2 }
	end

end


