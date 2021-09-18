def bubble_sort(array)
  return array if array.length <= 1

  swap = true

  while swap
    swap = false

    array.each_with_index do |v, i|
      if i < array.length - 1
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swap = true
        end
      end
    end
  end
  return array
end

puts bubble_sort([4,3,7,5,3,4])