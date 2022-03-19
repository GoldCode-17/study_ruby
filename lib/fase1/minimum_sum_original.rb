def minSum(arr)
  min_val = arr.min

  return min_val * (arr.length() - 1)
end

a = [7, 2, 3, 4, 5, 6]
puts minSum(a)