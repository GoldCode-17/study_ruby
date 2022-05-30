module JumSearch
  class Jump_Search
    def jumpSearch(arr, x, n)
      step = Math.sqrt(n)
      prev = 0
      while arr[([step, n].min) - 1 ] < x
        prev = step
        step += Math.sqrt(n)

        if prev >= n then
          return nil   
        end

      end

      while arr[prev] < x
        prev += 1

        if prev == ([step, n].min) then        
          return nil 
        end

        if arr[prev] == x then
          return prev 
        end

      end
    end
  end
end


=begin

arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x = 55
n = arr.length

index = jumpSearch(arr, x, n)

puts "O número #{x} está localizado no índice #{index.round 0}"


#teste
a = 35
b = 32

puts "O menor número é #{[a, b].min}"

=end