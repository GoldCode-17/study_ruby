def maximumSum(arr, n, k)

  rang = 1..(k +1)

  for i in rang
    min = +2147483647
    index = -1

    for j in 0..(arr.length - 1)
      if arr[j] < min
        min = arr[j]
        index = j
      end
    end

    if (min == 0)
      break
    end


    arr[index] = -arr[index]
  end

  sum = 0
  for i in 0..(n - 1)
    sum += arr[i]
  end  

  return sum
end

arr = [-2, 0, 5, -1, 2]
k  = 4
n = arr.length()
puts maximumSum(arr, n, k)
