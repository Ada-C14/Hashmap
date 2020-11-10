#space complexity: O(n),  where n is length of string (space for hash)
#time complexity: O(n),  where n is length of string (time to build the hash)

def palindrome_permutation(str)
  str_hash = {}
  #add all letters of string to a hash: {letter => occurrences}
  str.each_char do |char|
    if str_hash[char]
      str_hash[char] += 1
    else
      str_hash[char] = 1
    end
  end

  #return false if > 1 letter has an odd number of occurrences
  odd_letter_counter = 0
  str_hash.each_value do |value|
    odd_letter_counter += 1 if value % 2 != 0
    return false if odd_letter_counter > 1
  end
  return true
end
