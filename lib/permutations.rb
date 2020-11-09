
def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"

  hash = Hash.new(0)

  return true if string1.nil? && string2.nil?
  return false if string1.length != string2.length

  # put each (uniq) letter in a hash
  string1.chars.each do |letter|
      hash[letter] += 1
  end

  # count if the second list contains those uniq letters in the same qty
  string2.chars.each do |letter|
    if hash[letter] > 0
      hash[letter] -= 1
      puts hash
    else
      return false
    end
    end

  return true
end