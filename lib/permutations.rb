
def permutations?(string1, string2)
  return false if string1.length != string2.length

  string1 = string1.chars
  string2 = string2.chars

  hash = {}
  hash.default = 0
  string1.each do |char|
    hash[char] += 1
  end

  string2.each do |element|
    if hash[element] == nil
      return false
    else hash[element] -= 1
    end
  end

  hash.each do |key, value|
    return false unless value == 0
  end
  return true
end

