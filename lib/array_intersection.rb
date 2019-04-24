# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n*m) because there is a nested loop, having to go through each element in both arrays
# Space complexity: O(n) where n is the number of elements in the intersection array
def intersection(array1, array2)
  intersection = []
  if array1 == nil || array1.length == 0
    return []
  elsif array2 == nil || array2.length == 0
    return []
  else  
    if array1.length > array2.length
      array = array2
      other_array = array1
    else array = array1
      other_array = array2
    end
      other_array.each do |num|
        array.each do |other_num|
          if other_num == num
            intersection << other_num
            next
          end
        end
      end
  return intersection
  end
end