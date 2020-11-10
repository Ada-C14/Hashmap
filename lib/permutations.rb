# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
def permutations?(string1, string2)
  return true if string1 == "" && string2 == ""
  return false if string1.length != string2.length

  hash = {}

  string1.each_char do |char|
    if hash.include?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
    end

    string2.each_char do |char|
      if hash[char].nil?
        return false
      elsif hash[char] > 1
        hash[char] -= 1
      else
        hash.delete(char)
      end
    end
  if hash.length == 0
    return true
  else
    return false
  end
end
#Qstns
# 1. What is permutation?
# ***A Permutation of a string is another string that contains same characters, only the order of characters can be different.
# 2. are we taking into consideration white space?
# 3. Does capitalization matter?


#
# permutations?("to", "toooo")
