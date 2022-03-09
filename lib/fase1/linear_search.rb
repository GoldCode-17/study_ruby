def search(arr, n, x)
  (0..arr.count).each do |i|
    return i if arr[i] == x
  end
  -1
end

arr = [2, 3, 4, 10, 40]
x = 10
n = arr.count

result = search(arr, arr.count, x)

if result == -1
  puts "O elemento não está presente no array."
else
  puts "O elemento está presente no índice #{result}."
end