
def permutations?(string1, string2)
  hash = Hash.new(0)  #set default value
  #even nonexistant key returns 0

  string1.each_char do |char|
    hash[char] += 1
  end
  string2.each_char do |char|
    if hash[char] > 0
      hash[char] -= 1
    else
      return false
    end
  end
  hash.each_value do |value|
    if value > 0
      return false
    end
  end
  return true
end
