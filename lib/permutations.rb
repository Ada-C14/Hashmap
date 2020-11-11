# Time Complexity: O(n)
# Space Complexity: O(n)


def permutations?(string1, string2)
  string2_hash = {}
  string1_hash = {}
  string2.each_char do |letter|
    if string2_hash.key?(letter)
      string2_hash[letter] += 1
    else
      string2_hash[letter] = 1
    end
  end
  string1.each_char do |letter|
    if string1_hash.key?(letter)
      string1_hash[letter] += 1
    else
      string1_hash[letter] = 1
    end
  end
  return string1_hash == string2_hash
end
