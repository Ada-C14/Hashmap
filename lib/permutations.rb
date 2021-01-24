
def permutations?(string1, string2)
  return true if string1.length == 0 && string2.length == 0
  return false if string1.length != string2.length

  hash = {}

  string1.each_char do |char|
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  string2.each_char do |char|
    if hash.has_key?(char)
      hash[char] -= 1
    end
  end

  hash.keys.each do |key|
    return false if hash[key] != 0
  end

  return true
end
