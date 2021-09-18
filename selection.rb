def selection_sort(array)
  n_ar = []
  min_index = 0


  while min_index < array.length
    j = min_index
    while j < array.length
      if array[min_index] > array[j]
        array[min_index], array[j] = array[j], array[min_index]
      end
      j += 1
    end
    n_ar[min_index] = array[min_index]
    min_index += 1
  end
  n_ar
end

puts selection_sort([1,5,3,2,4,1,7,8])