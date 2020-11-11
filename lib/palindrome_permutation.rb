# Time Complexity:
# Space Complexity:

def palindrome_permutation?(string)
  array = string.split (//)
  string_hash = {}

  array.each do |element|
    if string_hash.key? element
      string_hash[element] += 1
    else
      string_hash[element] = 1
    end
  end

  odd = 0
  string_hash.each_value do |value|
    if value % 2 != 0
      odd += 1
    end
  end
  return false if odd > 1
  return  true
end
