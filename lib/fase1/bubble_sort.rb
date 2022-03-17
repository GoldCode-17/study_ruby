# bubble sort algorithm
def bubbleSort(arr)
  n = arr.count

  # traverse through all array elements
  range = 0..(n - 1)

  range.each do |i|
    (0..((n - 1) - i - 1)).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end    
  end
end

# Driver code to test above
arr2 = [64, 34, 25, 12, 22, 11, 90]
 
bubbleSort(arr2)

puts "Sorted array is: "
(0...arr2.count).each do |i|
  puts arr2[i]
end