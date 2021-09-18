def insert_sort(array)
  i = 1

  while i < array.length

    key = array[i]
    j = i - 1

    while j>=0 && array[j] > key
      array[j+1] = array[j]
      j -= 1
    end
    array[j+1] =  key
    i += 1
  end
  array
end

puts insert_sort([1,4,3,2,5,2,3,4,7])