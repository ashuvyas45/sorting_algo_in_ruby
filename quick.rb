def quick_sort(array)
  if array.length <= 1
    return array
  end

  pivot = array.delete_at(rand(array.length))

  left = Array.new
  right = Array.new

  array.each do |v|
    if v <= pivot
      left << v
    else
      right << v
    end
  end

  return *quick_sort(left), pivot, *quick_sort(right)
end

puts quick_sort([1,3,4,2,5,6,78,4,5,6,7])
