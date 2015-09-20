module Arrays
	
	def middles(array1,array2)
	 	new_array = [array1[1],array2[1]]
	 	new_array
	end
	
	def max(array)
		max = 0
		array.each do |element|
			if element > max
				max = element
			end
		end
		max
	end
	
	def lucky13?(arr)
		sum = 0
		arr.each do |element|
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

	def repeat_seperator(word, seperator, count)
		new_string = ""
		(1..count-1).each do |n|
			new_string += word + seperator
		end
		new_string + word
	end
	
	def same_ends?(array , n)
		for i in 0...n
		 	if array[i]!= array[array.length-n+i]
		 		return false
		 	end
		 end
		return true 
	end
	
	def starry?(string)
		found_star = false
		for n in 0...string.length
			if string[n] == "*" 
				found_star = true
				if n > 0 && n <= string.length - 2
					if string[n-1] != string[n +1]
						return false
					end
				end
			end
		end
		if found_star == true
			true
		else
			false
		end
	end
	
	def plus_it(string, token)
		new_string = "+" * string.length #for output
		token_index = 0 # initialize index of the token in the string to zero
		while true # loop till the string is exhausted(searched entire string)
			offset = token_index == 0 ? 0 :  token_index + token.length #Start from zero, if we found token index before, find the postiion after the previous index()
			token_index = string.index(token, offset)# searched the token from the offset in the string(if there is more than 1 token in word)
			if token_index == nil # if no more tokens found, return new string
				return new_string
			else
				for i in 0...token.length #found one more token or more , put the token back into the new string
					new_string[token_index + i] = token[i]
				end
			end
			
		end
	end
	
	def zero_front(array)
		new_array = []
		for element in 0...array.length
			if array[element] == 0
				new_array.push(array[element])
			end
		end
		for element in 0...array.length
			if array[element] > 0 
				new_array.push(array[element])
			end
		end
		new_array
	end
	
	def ten_run(array)
		multiple = 0
		for element in 0...array.length
			multiple = array[element] if array[element] % 10 == 0
			array[element] = multiple if multiple > 0
		end
		array	
	end
	
	def max_span(array)
		span = 0 # declare the span as zero 
		for n in 0...array.length # so you're looping through the values
			for x in n...array.length # and then within each value to the end value
				if array[x] == array[n] #you're checking if any of the values are equal to each other
					#once you do, you're going to then subtract the index values, but add 1, since subtracting doesn't count the first 1
					span = (1 +(x-n)) if (1+(x-n)) > span && x-n >0	#checks whether the span is greater than the last one and that if there is no repition, its 0
				end
			end
		end
		return span
	end

end
