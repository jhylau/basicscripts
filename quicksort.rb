def quicksort(array)
	less = []
	greater = []
  pivot = array[0]
  
  if array.length <= 1
    return array
  elsif array.length > 1
	  array.each do |x|
      if x < pivot
        less.push(x)
      elsif x > pivot
        greater.push(x)
      end
    end
  end
  return (quicksort(less) << pivot << quicksort(greater)).flatten.compact
end
	
array = [1,2,3,4,5,6,7,11,10,-1,0]
puts quicksort(array).inspect