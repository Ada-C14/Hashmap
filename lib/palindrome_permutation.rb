
def palindrome_permutation?(string)

  hash = Hash.new(true)

  string.each_char do |char|
    if hash[char] == true
      hash[char] = false
    else
      hash[char] = true
    end

  end

  false_count = 0

  hash.each do |key, value|
    if value == false
      false_count += 1
    end
  end

  if false_count > 1
    return false
  else
    return true
  end
end # method
