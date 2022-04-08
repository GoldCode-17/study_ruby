def minProductSubset(a, n)

  if (n == 1)
    return a[0]
  end

  max_neg = -9999999999
  min_pos = 0
  count_neg = 0
  count_zero = 0
  prod = 1

  for i in (0..n)

    if (a[i] != nil)
      if (a[i] == 0)
        count_zero += 1
        countinue
      end
    end

    if (a[i] != nil)
      if (a[i] < 0)
        count_neg += 1
        max_neg = [max_neg, a[i]].max
      end
    end

    if (a[i] != nil)
      if (a[i] > 0)
        min_pos = [min_pos, a[i]].max
      end
      prod = prod * a[i]
    end

    if (count_zero == n or  (count_neg == 0 and count_zero > 0))
      return 0
    end

    if (count_neg == 0)
      return min_pos
    end

    if ((count_neg & 1) == 0 and count_neg != 0)
      prod = (prod / max_neg).to_i
    end

    return  prod
  end
end

a = [-1, -1, -2, 4, 3]
n = a.length
puts minProductSubset(a, n)