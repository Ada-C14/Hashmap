# Time complexity: O(n)
# >> O(n) for iterating through each character in input string

# Space complexity: O(n)
# >> O(n) for the creation of the char_counts hash
# >> O(n) for #select

def palindrome_permutation?(string)
  return true if string.empty?

  char_counts = {}

  string.each_char do |char|
    char_counts[char] ? char_counts[char] += 1 : char_counts[char] = 1
  end

  return false if char_counts.select { |key, val| val == 1 }.size > 1
  return true
end
