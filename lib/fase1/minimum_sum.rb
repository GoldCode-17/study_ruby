module MinSum
  class Minimum_Sum
    def minSum(arr)
      min_val = arr.min
      return min_val * (arr.length() - 1)
    end
  end    
end