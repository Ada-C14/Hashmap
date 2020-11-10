def permutations?(string1, string2)
  hash = {}

  s1 = string1.split("")
  s2 = string2.split("")

  if s1.length == 0
    return true
  elsif s1.length != s2.length
    return false
  end

  s1.each do |i|
    if hash[i]
      hash[i] += 1
    else
      hash[i] = 1
    end
  end

  s2.each do |j|
    if hash[j]
      hash[j] -= 1
    else
      return false
    end
  end

  hash.each do |k, v|
    if hash[k] != 0
      return false
    end
  end
  return true
end

