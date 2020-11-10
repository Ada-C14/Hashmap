# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
#
# permutations?("hello", "ehllo") => true
# permutations?("pasta", "atsap") => true
# permutations?("Pizza", "Pasta") => false
# permutations?("", "") => true
def permutations?(string1, string2)
  return false if string1.length != string2.length

  lookup_hash = Hash.new(0)

  length = string1.length

  length.times do |i|
    letter = string1[i]

    lookup_hash[letter] += 1
  end

  length.times do |i|
    letter = string2[i]

    if lookup_hash[letter]
      lookup_hash[letter] -= 1
    else
      return false
    end
  end

  return lookup_hash.values.all? { |value| value == 0}
end
