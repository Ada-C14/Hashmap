# time: O(n) for creating hash
# space: O(n) for creating hash

def palindrome_permutation?(string)
  return true if string.empty?
  hash = {}
  string.each_char do |char|
    # track number of same char in string
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  single_odd = false
  hash.each do |char, freq|
    if freq % 2 == 1
      return false if single_odd
      single_odd = true
    end
  end

  return true
end # method
