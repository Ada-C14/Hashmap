# Time complexity: O(n) - n is length of string
# Space complexity: O(n) - n is length of string
def palindrome_permutation?(string)
  hash = Hash.new(0)

  string.each_char do |char|
    hash[char] += 1
  end

  had_odd = false
  hash.keys.each do |char|
    if hash[char].odd?
      return false if had_odd
      had_odd = true
    end
  end

  return true
end # method
