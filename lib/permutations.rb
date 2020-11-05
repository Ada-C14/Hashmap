def permutations?(string1, string2)
  # return false for different size strings
  return false if string1.length != string2.length
  # true for empty strings
  return true if string1.empty? && string2.empty?

  # hash first string
  hash = {}
  string1.each_char do |char|
    # track number of same char in string
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  # use second string to "countdown"
  string2.each_char do |char|
    if hash.has_key?(char)
      if hash[char] == 0  # number of this char depleted in first string, not equal
        return false
      end
      hash[char] -= 1 # else decrement
    else
      return false
    end
  end

  return true # same character set if both true
end
