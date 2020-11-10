
def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"
  lookup_hash = {}

  chars1 = string1.split('')
  chars2 = string2.split('')

  return true if chars1.length == 0 && chars2.length == 0

  chars1.each do |letter|
    if lookup_hash[letter]
      lookup_hash[letter] = 2
    else
      lookup_hash[letter] = true
    end

  end

  chars2.each do |letter|
    if lookup_hash[letter] == 2
      lookup_hash[letter] = true
    elsif lookup_hash[letter]
      lookup_hash[letter] = false
    else
      return false
    end
  end

  chars1.each do |letter|
    return false if lookup_hash[letter] != false
  end

  return true

end
