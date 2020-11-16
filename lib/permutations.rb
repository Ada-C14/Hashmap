
def permutations?(string1, string2)
  return true if string1.length == 0 && string2.length == 0
  hash = {}
  false if string1.length != string2.length
  string1 = string1.split
  string2 = string2.split
  count = 0
  string1.each do |letter|
    hash[letter] = hash[letter].nil? ? 1 : hash[letter] + 1
  end
  until count == hash.length
    string2.each do |letter|
      if hash[count] != letter
      return false
      else count += 1
      end
    end
  end
  return true
end
