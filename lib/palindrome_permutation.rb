
def palindrome_permutation?(string)
  hash = Hash.new(0)

  string.chars.each do |letter|
    hash[letter] += 1
  end

  middle_char = 0
  hash.each do |key, value|
    if value % 2 != 0
      middle_char += 1
    end
  end

  if middle_char > 1
    return false
  else
    return true
  end
 
end
