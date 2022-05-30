def jumpSearch(arr, x, n)
  step = Math.sqrt(n)

  prev = 0

  while arr[[step, n].min - 1 ] < x
    prev = step
    step += Math.sqrt(n)
    return -1 if prev >= n
  end

  while arr[prev] < x
    prev += 1

    return -1 if prev == [step, n].min

    return prev if arr[prev] == x
  end
end

arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x = 56
n = arr.length

index = jumpSearch(arr, x, n)

if index != nil then
  puts "O número #{x} está localizado no índice #{index.round 0}"
elsif
  puts "O número #{x} não foi localizado no array"
end  