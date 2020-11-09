#Time complexity: O(n)
# space complexity: O(n)

def palindrome_permutation?(string)
  hash = {}
  odd_count = 0

  string.each_char do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  hash.each_value do |value|
    if value.odd?
      odd_count += 1
      return false if odd_count > 1
    end
  end
  return true
end

# p palindrome_permutation?("hello")
# p palindrome_permutation?("carrace")