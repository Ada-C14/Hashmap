def permutations?(string1, string2)

  return false unless string1.length == string2.length

  hash = {}

  string1.each_char do |char|
    if !hash[char]
      hash[char] = 1
    else
      hash[char] += 1
    end
  end

  string2.each_char do |char|
    if hash[char]
      hash[char] -= 1
    else
      # catch characters that do not belong - wrote test
      return false
    end
  end

  hash.each do |char, count|
    return false if count.negative?
  end

  return true
end