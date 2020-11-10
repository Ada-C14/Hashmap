
def palindrome_permutation?(string)
  hash = {}

  if string.length == 0
    return true
  end

  first = string.split("")
  count = 0

  first.each do |key|
    if hash[key]
      hash[key] += 1
    else
      hash[key] = 1
    end
  end

  hash.each do |key, value|
    if hash[key] % 2 == 1
      count += 1
    end
  end

  if count > 1
    return false
  else
    return true
  end
end # method
