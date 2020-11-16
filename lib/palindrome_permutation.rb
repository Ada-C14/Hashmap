
def palindrome_permutation?(string)
  if string == ""
    return true
  end
  hash = {}
  string = string.split
  string.each do |letter|
    hash[letter] = hash[letter].nil? ? 1 : hash[letter] + 1
  end
  count = 0
  negative_count = -1
  until count == string.length
  if string[count] != hash[negative_count]
    return false
  else
    count += 1
    negative_count -= 1
  end
  return true
  end
  end
