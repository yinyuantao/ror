
def sum(array)
	sum = 0
  if array.length ==0
    return 0
  else 
    for i in 0...array.length do
			sum += array[i]
		end
    return sum
	end
end

puts sum([1,2,3]) == 6
puts sum([1,2,3,4]) == 10

def max_2_sum(array)
	sum2=0
	if array.length ==0
    return 0
  elseif array.length ==1
		return array[0]
  else
		sum2 = array.sort.last(2).reduce(&:+)
    return sum2
	end 
end

puts max_2_sum([]) == 0
puts max_2_sum([22]) == 22
puts max_2_sum([11,22,2]) ==33

def sum_to_n?(array,n)
	x=0
	y=array.length-1
  while x < y do
		if array.sort[x] + array.sort[y] == n
			return true
		elsif array.sort[x] + array.sort[y] > n
      y -= 1;
    else
      x += 1;
    end
  end
  return false
end

puts sum_to_n?([22,33,1],23)
puts sum_to_n?([],23)

