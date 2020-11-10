#Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.
def palindrome_permutation?(string)
  return true if string == ""

  hash_map = {}
  odd_number = 0

  string.each_char do |char|
    if hash_map.include?(char)
    hash_map[char] += 1
    else
    hash_map[char] = 1
    end
  end

  string.each_char do |char|
    if hash_map[char] % 2 != 0
      odd_number += 1
    end
    return false if odd_number > 1
  end
  return true

end # method
#Questions
#How do you know if a word can be arranged into a palindrome, generally speaking?
#Word must have 1 single odd letter (no matches), the rest of the letters must have doubles (be divisible by 2).
# Need to ensure there is only 1 letter with odd count
