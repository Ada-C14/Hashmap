# Time complexity: O(n) : loop through the char_arr in a linear fashion
# Space complexity: O(1) : hash_table creation is limited to 26 characters of the alphabet

def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"
  # Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
  # permutations?("hello", "ehllo") => true
  # permutations?("pasta", "atsap") => true
  # permutations?("Pizza", "Pasta") => false
  # TODO: think about how we can store and compare if the keys and values are present and if they are equal

  return true if string1.empty? && string2.empty?
  return false if string1.size != string2.size

  lookup_hash = Hash.new(0)
  lookup_hash2 = Hash.new(0)

  string1.each_char {|char| lookup_hash[char] += 1}
  string2.each_char {|char| lookup_hash2[char] += 1}

  return lookup_hash == lookup_hash2

end
