# program for implementation of Selection Sort
arr = [64, 25, 12, 22, 11]

# Traverse through all array elements
for i in (0..(arr.length() - 1)) do
  # Find the minimum element in remaining unsorted array
  min_idx = i
  cont = min_idx + 1

  for j in (cont..(arr.length)) do
    if arr[j] != nil
      if arr[min_idx] > arr[j] then
        min_idx = j
      end
    end
  end
  # Swap the found minimum element with the first element
  arr[i], arr[min_idx] = arr[min_idx], arr[i]
end

puts "Sorted array: #{arr}"