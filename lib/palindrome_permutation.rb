
def palindrome_permutation?(string)
  return true if string.empty?

  hash = {}
  count = 0

  string.each_char do |char|
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end


  hash.keys.each do |key|
    count += 1 if hash[key] % 2 != 0
    return false if count > 1
  end
  return true
end # method
