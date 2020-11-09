
def permutations?(string1, string2)
  return false if string1.length != string2.length
  hash = {}

  string1.each_char do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end

  string2.each_char do |letter|
    hash[letter] ? hash[letter] -= 1 : (return false)
  end
  
  hash.each_value do |value|
    return false if value != 0
  end

  return true
end
