
def palindrome_permutation?(string)
  word = string.downcase.chars

  hash = {}
  hash.default = 0 # set values to zero

  word.each do |char|
    hash[char] += 1
  end


  if word.length % 2 == 0 && hash.values.all? { |num| num.even? }
    return true
  elsif word.length % 2 != 0
    middle_char = hash.select{ |k,v| v == 1}
    if middle_char.length != 1
      return false
    else
     hash.delete(middle_char.key(1))
      if hash.values.all? {|num| num.even? }
        return true
      end
    end
  else
    return false
  end

end
