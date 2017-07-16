module Enumerable
	def my_each(array)
		x = 0
		for x in x..array.length do
			yield(array[x])
		end
			
		
	end

	def my_each_with_index(array)
		x = 0
		for x in x..array.length do
			yield(x, array[x])
		end
	end

	def my_select(array)
		x = 0
		new_array = []
		for x in x..array.length do
			if yield(array[x]) == true
				new_array.push(array[x])
			end
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
	end

	def my_count(array)

	end

	def my_map(array)

	end

	def my_inject

	end

end