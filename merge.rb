def merge_sort(array)
  if array.length <= 1
    return array
  end

  mid = (array.length/2).floor
  left = merge_sort(array[0..mid-1])
  right = merge_sort(array[mid..array.length])
  merge(left, right)
end

def merge(left, right)
  if left.empty?
    return right
  elsif right.empty?
    return left
  elsif left[0] < right[0]
    [left[0]] + merge(left[1..left.length], right)
  else
    [right[0]] + merge(left, right[1..right.length])
  end
end

puts merge_sort([1,2,4,5,3,2,8,7,9,5])