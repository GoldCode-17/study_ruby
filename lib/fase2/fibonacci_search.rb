module ModuleFibonacciSearch
  class Fibonacci_Search
    def FibonacciSearch(arr, x, n)
      fibMMm2 = 0
      fibMMm1 = 1
      fibM = fibMMm2 + fibMMm1

      while (fibM < n)
        fibMMm2 = fibMMm1
        fibMMm1 = fibM
        fibM = fibMMm2 + fibMMm1
      end

      offset = -1

      while (fibM > 1) do

        i = [(offset + fibMMm2), (n - 1)].min

        if (arr[i] < x)
          fibM = fibMMm1
          fibMMm1= fibMMm2
          fibMMm2 = fibM - fibMMm1
          offset = i
        elsif (arr[i] > x)
          fibM = fibMMm2
          fibMMm1 = fibMMm1 - fibMMm2
          fibMMm2 = fibM - fibMMm1
        else
          return i
        end
      end
    end
  end
end