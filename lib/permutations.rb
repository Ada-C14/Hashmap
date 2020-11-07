
def permutations?(string1, string2)

  hash = Hash.new(0)
  string1.each_char do |char1|
    hash[char1] += 1
  end

  string2.each_char do |char2|
     hash[char2] -= 1
  end

  return hash.values.all?(0)
end

#time complexity os O(n) where n is the length of string
#space complexity is O(1), only 26 alphabets