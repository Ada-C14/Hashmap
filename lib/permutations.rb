# Write a method which will take two strings as arguments and
# returns true if one string is a permutation of the other.
#
# permutations?("hello", "ehllo") => true
# permutations?("pasta", "atsap") => true
# permutations?("Pizza", "Pasta") => false
# permutations?("", "") => true


def permutations?(string1, string2)
  return true if string1 == "" && string2 == "" # sentinels
  return false if string1.length != string2.length

  hash1 = {}
  hash2 = {}

  array1 = string1.split("")
  array2 = string2.split("")

  array1.each do |char|
    if hash1[char]   # inverse check is possible with bang in front of value, otherwise start with truthy
      hash1[char] += 1
    else
      hash1[char] = 1
    end
  end

  array2.each do |char|
    if hash2[char]
      hash2[char] += 1
    else
      hash2[char] = 1
    end
  end

  return hash1 == hash2 # Doesn't require if/else statement bc this will evaluate to true or false

end
