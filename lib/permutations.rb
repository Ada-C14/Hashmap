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

  lookup_hash = {}

  string1.each_char do |char|
    lookup_hash.include?(char) ? lookup_hash[char] += 1 : lookup_hash[char] = 1
  end

  lookup_hash2 = {}

  string2.each_char do |char|
    lookup_hash2[char] ? lookup_hash2[char] += 1 : lookup_hash2[char] = 1
  end

  lookup_hash == lookup_hash2 ? true : false

  # lookup_hash.each_value do |value|
  #   return false if value.odd?
  # end
  #
  # return true

end
