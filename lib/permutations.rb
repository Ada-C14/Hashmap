
def permutations?(string1, string2)
  hash = {}

  return false if string1.length != string2.length

  string1.split("").each do |letter|
    if hash[letter] == nil
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end

  string2.split("").each do |letter|
    if hash[letter].nil? || hash[letter] == 0
      return false
    else
      hash[letter] -= 1
    end
  end

  return true
end