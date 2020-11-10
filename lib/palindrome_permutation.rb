
def palindrome_permutation?(string)

  lookup_hash = {}
  chars = string.split('')
  counter = 0

  return true if chars.length == 0

  chars.each do |letter|
    if lookup_hash[letter] == false || lookup_hash[letter] == nil
      lookup_hash[letter] = letter
    elsif lookup_hash[letter] == letter
      lookup_hash[letter] = true
    elsif lookup_hash
      lookup_hash[letter] = letter
      end
  end

  chars.each do |letter|
    if lookup_hash[letter] != true
      counter += 1
    end
  end

  if counter > 1
    return false
  end

  return true

end


