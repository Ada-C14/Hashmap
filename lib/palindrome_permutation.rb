
def palindrome_permutation?(string)

  hash = Hash.new(0)
  string.each_char do |char|
    hash[char] += 1
  end

  count = 0
  hash.values.each do |value|
    count += 1 if value % 2 != 0
    return false if count > 1
  end
  return true

end


#time complexity os O(n) where n is the length of string
#space complexity is O(1), only 26 alphabets