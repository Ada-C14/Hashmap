# Time complexity: O(n)
# looping through the characters linearly as the size of the string.
# Could this be O(1) because the string has a max size it can be since it's an English word?
# Space complexity: O(1)
# lookup_hash table creation is limited to 26 letter in the English alphabet
def palindrome_permutation?(string)
  # pseudo code
  # What requirements for a string to be a palindrome?
  # if its a word with even amount of characters. the value of the keys in the hash table has to be even also
  # Iterate through the hash table to make sure character counts are all even or at most one value is odd.
  #  how would you translate "at most one value is odd?"

  lookup_hash = {}

  string.each_char do |char|
    lookup_hash.include?(char) ? lookup_hash[char] += 1 : lookup_hash[char] = 1
  end

  odd = 0

  lookup_hash.each_value do |value|
    odd += 1 if value.odd?
  end

  odd > 1 ? false : true

end
