def heap_sort(array)
  size = array.length
  array = [nil] + array

  (size/2).downto(1) do |i|
    heapify(array, i, size)
    i -= 1
  end

  while size > 1
    array[1], array[size] = array[size], array[1]
    size -= 1
    heapify(array, 1, size)
  end
  array.delete_at(0)
  array
end

def heapify(a, parent, limit)
  root = a[parent]

  while (child_node = 2*parent) <= limit
    child_node += 1 if child_node < limit && a[child_node] < a[child_node + 1]
    break if root >= a[child_node]
    a[parent], parent = a[child_node], child_node
  end
  a[parent] = root
end

puts heap_sort([1,2,3,1,2,3,4,6,4,5,8,7,9])