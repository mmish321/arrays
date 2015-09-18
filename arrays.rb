module Arrays
	
	def middles(array1,array2)
	 	new_array = [array1[1],array2[1]]
	end
	
	def max(array)
		x = 0
	 array.each do |element|
	end
	
	def lucky13?(array)
		sum = 0
		array.each do |element|
			if element == 1 || element == 3
				sum += 1
			end
		end
		if sum == 0
			true
		else 
			false
		end
	end

end
