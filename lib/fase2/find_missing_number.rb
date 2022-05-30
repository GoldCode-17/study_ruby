module MissNo
  class Missing_Numger
    def getMissingNo(arr)
      n = arr.length
      total = (n + 1) * (n + 2) / 2
      sum_of_arr = arr.sum
      return total - sum_of_arr
    end
  end
end