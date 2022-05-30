def getMissingNo(arr)
  n = arr.length
  total = (n + 1) * (n + 2) / 2
  sum_of_arr = arr.sum
  return total - sum_of_arr
end

a = [1, 2, 4, 5, 6]
miss = getMissingNo(a)
puts "Número desaparecido: #{miss}"