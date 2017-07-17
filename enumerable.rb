module Enumerable
	def my_each(array)
		x = 0
		for x in x..array.length do
			yield(array[x])
			x += 1
		end
			
		
	end

	def my_each_with_index(array)
		x = 0
		for x in x..array.length do
			yield(x, array[x])
			x += 1
		end
	end

	def my_select(array)
		x = 0
		new_array = []
		for x in x..array.length do
			if yield(array[x]) == true
				new_array.push(array[x])
			end
			x += 1
		end
		return new_array
	end

	def my_all?(array)
		x = 0
		yield_count = 0
		for x in x..array.length do
			if yield(array[x]) == true
				yield_count +=1
			end
			if yield_count == array.length
				return true
			else
				return false
			end
			x += 1
	end

	def my_any?(array)
		x = 0
		yield_count = 0
		for x in x..array.length do
			if yield(array[x]) == true
				yield_count +=1
			end
			if yield_count > 0
				return true
			else
				return false
			end
			x += 1
	end

	def my_none?(array)
		x = 0
		yield_count = 0
		for x in x..array.length do
			if yield(array[x]) == true
				yield_count +=1
			end
			if yield_count == 0
				return true
			else
				return false
			end
			x += 1
		end

	end

	def my_count(array)
		x = 0
		true_value = 0
		for x in x..array.length do
			if block_given?
				if yield(array[x]) == true
					true_value += 1
				end
			end
			x += 1
		end
		return true_value
	end

	def my_map(array)
		x = 0
		new_array = []
		for x in x..array.length do
			new_array[x] = yield(array[x])
			x += 1
		end
		return new_array
	end

	def my_inject(array, num)
		x = 0
		
		for x in x..array.length do
			total = yield(num, array[x])
			num = total
			x += 1
		end
		return total
	end

end

test_array = [1, 2, 3, 4, 5]