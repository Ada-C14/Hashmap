def palindrome_permutation?(string)
  hash = Hash.new(0)
  string.each_char { |char| hash[char] += 1 }

  return (hash.values.count { |freq| freq % 2 != 0 }) <= 1
end