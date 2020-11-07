
def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"
  # Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
  # permutations?("hello", "ehllo") => true
  # permutations?("pasta", "atsap") => true
  # permutations?("Pizza", "Pasta") => false

  # what does it mean to have permuation of the other string?
  # we need a lookup_hash table
  # what is the key and the value
  # key: the letters
  # value : boolean or integer?
  # TODO: think about how we can store and compare if the keys and values are present and if they are equal

  return true if string1.empty? && string2.empty?

  lookup_hash = {}

  string1.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = true
    else
      lookup_hash[char] = false
    end
  end

  string2.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = true
    else
      lookup_hash[char] = false
    end
  end

  return lookup_hash.values.all?


end
