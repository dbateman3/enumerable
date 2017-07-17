module Enumerable
	def my_each
		x = 0
		for x in x..self.length - 1 do
			yield(self[x])
			x += 1
		end
			
		
	end

	def my_each_with_index
		x = 0
		for x in x..self.length - 1 do
			yield(x, self[x])
			x += 1
		end
	end

	def my_select
		x = 0
		new_array = []
		for x in x..self.length - 1 do
			if yield(self[x]) == true
				new_array.push(self[x])
			end
			x += 1
		end
		return new_array
	end

	def my_all?
		x = 0
		yield_count = 0
		for x in x..self.length - 1 do
			if yield(self[x]) == true
				yield_count += 1
			end
			x += 1
		end
		if yield_count == self.length 
			return true
		else
			return false
		end
	end

	def my_any?
		x = 0
		yield_count = 0
		for x in x..self.length - 1 do
			if yield(self[x]) == true
				yield_count +=1
			end
			x += 1
		end
		if yield_count > 0
				return true
			else
				return false
			end
	end

	def my_none?
		x = 0
		yield_count = 0
		for x in x..self.length - 1 do
			if yield(self[x]) == true
				yield_count +=1
			end
			x += 1
		end
		if yield_count == 0
				return true
			else
				return false
			end

	end

	def my_count
		x = 0
		true_value = 0
		for x in x..self.length - 1 do
			if block_given?
				if yield(self[x]) == true
					true_value += 1
				end
			else
				true_value = self.length
			end
			x += 1
		end
		return true_value
	end

	def my_map
		x = 0
		new_array = []
		for x in x..self.length - 1 do
			new_array[x] = yield(self[x])
			x += 1
		end
		return new_array
	end

	def my_inject(num)
		x = 0
		
		for x in x..self.length - 1 do
			total = yield(num, self[x])
			num = total
			x += 1
		end
		return total
	end

end




test_array = [1, 2, 3, 4, 5]

map = Proc.new { |item|  item + 1 }

answer8 = test_array.my_map(&map)
puts answer8

test_array.my_each do |item|
	puts item
end
# my_each works!

test_array.my_each_with_index do |index, item|
	puts "#{index.to_s}: #{item.to_s}"
end
# my_each_with_index works!

another_a = test_array.my_select { |item| item % 2 == 0 }
puts another_a
# my_select works!

answer = test_array.my_all? { |item| item / 1 == item }
puts answer
# my_all? works!

answer2 = test_array.my_any? { |item| item == 0 }
puts answer2
# my_any? works!

answer3 = test_array.my_none? { |item| item == 0 }
puts answer3
# my_none? works!

answer4 = test_array.my_count { |item| item == 5 }
puts answer4
# my_count works!

#answer5 = test_array.my_map { |item| item + 1 }
#puts answer5
# map works!

answer6 = test_array.my_inject(0) { |num, item| num + item  }
puts answer6
# my_inject works! woo hoo!

def multiply_els(array)
	array.inject(1) { |num, item| num * item }

end

answer7 = multiply_els(test_array)
puts answer7