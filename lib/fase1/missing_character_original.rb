MAX_CHAR = 26

def missingChars(str)
  presentArr = [false]

  for i in (0..(MAX_CHAR - 2))
    presentArr.push(false)
  end

  for i in (0..(str.length() - 1))
    if (str[i] >= 'a' and  str[i] <= 'z') then
      presentArr[str[i].ord - ('a'.ord)] = true
    else
      if  (str[i] >= 'A' and str[i] <= 'Z')
        presentArr[str[i].ord - 'A'.ord] = true
      end
    end
  end

  res = ""

  for i in (0..(MAX_CHAR - 1))
    if (presentArr[i] == false)
      res += (i + 'a'.ord).chr
    end
  end

  return res

end

str_1 = "The quick brown fox jumps over the dog"
puts missingChars(str_1)