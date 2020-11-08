
def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash = Hash.new(0)

  string1.each_char do |char|
    hash[char] += 1
  end

  string2.each_char do |char|
    if hash[char] != 0
      hash[char] -= 1 #prevents duplicates
    else
      return false
    end
  end

  return true
end
