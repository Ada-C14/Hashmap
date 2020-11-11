#space complexity: O(n),  where 'n' is the number of elements in str1
#time complexity: O(n),  where 'n' is the number of elements in str1 (time required to build the hash)

def permutations(str1, str2)
  return false if str1.length != str2.length
  str1_hash = {}

  str1.each_char do |char|   #Add each char in str1 to a hash, {char => # of occurrences}
    if str1_hash[char]
      str1_hash[char] += 1
    else
      str1_hash[char] = 1
    end
  end

  str2.each_char do |char|   #Check if each char of str2 exists in str1_hash, decrement hash values accordingly

    if str1_hash[char].nil?
      return false
    elsif str1_hash[char] > 1
      str1_hash[char] -= 1
    else
      str1_hash.delete(char)
    end
  end

  return str1_hash.empty? ? true : false #If str1_hash is empty, the strings are palindromes
end
