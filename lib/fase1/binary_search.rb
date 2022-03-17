def binarySearch(arr, l, r, x)
  # Check base case
  if r >= l
    mid = l + (r - l)
    # If element is present at the middle itself
    if arr[mid] == x
      return mid
    # If element is smaller than mid, then it
    # can only present in left subarray
    elsif arr[mid] > x
      return binarySearch(arr, l, (mid -1), x)
    else
      return binarySearch(arr, (mid + 1), r, x)      
    end
  else
    -1
  end
end

arr = [2, 3, 4, 10, 40]
x = 10

result = binarySearch(arr, 0, (arr.count - 1), x)

if result != -1
  puts "O elemento está presente no índe #{result}."
else
  puts "O elemento não está presente no array!"
end