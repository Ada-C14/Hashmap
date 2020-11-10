
def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash1 = {}
  hash2 = {}

  hash1.default = 0 # set values to zero
  hash2.default = 0 # set values to zero

  word1 = string1.downcase.chars
  word2 = string2.downcase.chars

  word1.each do |char1|
    hash1[char1] += 1
  end

  word2.each do |char2|
    hash2[char2] += 1
  end

  hash1.each do |char1, freq1|
    if hash2[char1] != freq1
      return false
    end
  end

  true

end
