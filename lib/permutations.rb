# Time complexity: O(n)
# >> O(n) iteration through string chars in letter_count()
# >> O(n) iteration through string chars in string2
# >> O(n) .values (returns an array of the values)
# >> O(n) for .any?

# Space complexity: O(n)
# >> creation of hash with char counts
# >> creation of array when checking hash.values

def letter_count(str, hash)
  str.each_char do |char|
    hash[char] ? hash[char] += 1 : hash[char] = 1
  end
end

def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"
  hash = {}

  if string1.length == string2.length
    letter_count(string1, hash)

    string2.each_char do |char|
      hash[char] -= 1 if hash[char]
    end

    return false if hash.values.any? { |value| value > 0 }
    return true
  end

  return false
end
