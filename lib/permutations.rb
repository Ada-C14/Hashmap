
def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash = {}
  string1.split("").each do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end

  string2.split("").each do |letter|
    return false unless hash[letter]
    hash[letter] -= 1
    hash[letter] = nil if hash[letter] == 0
  end

  return true
end
