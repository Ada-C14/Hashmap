#space complexity: O(n), where n is length of string (space for hash)
#time complexity: O(n), where n is length of string (time to build the hash)

def palindrome_permutation(str)
  str_hash = {}

  str.each_char do |char|      #add every letter of string to a hash: {letter => occurrences}

    if str_hash[char]
      str_hash[char] += 1
    else
     str_hash[char] = 1
    end
  end

  odd_letters_counter = 0     #return false if more than 1 letter has an odd num of occurrences

  str_hash.each_value do |value|
    odd_letters_counter += 1 if value % 2 != 0
    return false if odd_letters_counter > 1
  end

  return true
end

