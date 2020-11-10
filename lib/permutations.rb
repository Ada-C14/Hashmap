
def permutations?(string1, string2)
  #raise NotImplementedError, "permutations? not implemented"
  hash = {}
  first = string1.split("")
  second = string2.split("")

  if string1.length != string2.length
    return false
  elsif string1.length == 0
    return true
  end

  first.each do |key|
    if hash[key]
      hash[key] += 1
    else
      hash[key] = 1
    end
  end

  second.each do |letter|
    if hash[letter]
      hash[letter] -= 1
    else
      return false
    end
  end

  hash.each do |key, value|
    if hash[key] != 0
      return false
    end
  end

  return true

end
