module Busca
  class Linear_Search
    def search(arr, n, x)
      (0..arr.count).each do |i|
        return i if arr[i] == x
      end
      -1
    end
  end
end