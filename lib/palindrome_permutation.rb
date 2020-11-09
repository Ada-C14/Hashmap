
def palindrome_permutation?(string)
  hash ={}
  string.split("").each do |letter|
    hash[letter] ? (hash[letter] += 1) : hash[letter] = 1
  end

  return false if (hash.select{ |letter, count| count % 2 == 1}).length > 1
  return true
end # method
