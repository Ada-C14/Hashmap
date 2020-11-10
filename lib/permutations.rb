# Time complexity: O(n) where n is the length of either string
# Space complexity: O(n) where n is the length of either string
def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash = Hash.new(0)
  string1.each_char do |char|
    hash[char] += 1
  end

  string2.each_char do |char|
    hash[char] -= 1
    return false if hash[char] < 0
  end

  return true
end
