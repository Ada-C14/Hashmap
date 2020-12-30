#time complexity: O(n)
# space complexity: O(n)
def palindrome_permutation?(string)
  hash = Hash.new(0)
  odd_count = 0

  string.each_char do |letter|
    hash[letter] += 1
  end

  hash.values.each do |frequency|
    if frequency.odd?
      odd_count += 1
    end
  end

  return false if odd_count > 1
  return true
end
