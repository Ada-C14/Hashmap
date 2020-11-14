
def palindrome_permutation?(string)
  #if the letters can be rearranged into a palindrome
  hash = Hash.new(0)
  count = 0

  string.each_char do |char|
    hash[char] += 1
  end

  if string.length % 2 == 0
    #need to have even # of letters.
    if hash.values.all? { |value| value % 2 ==0 }
      return true
    else
      return false
    end
  else
    hash.each do |key, value|
      if value % 2 != 0
        count += 1
      end
    end
    if count > 1
      return false
    else
      return true
    end
  end



end
