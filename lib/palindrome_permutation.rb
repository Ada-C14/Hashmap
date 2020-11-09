
def palindrome_permutation?(string)
  array = string.split(//)

  hash = Hash.new(1) #specifying default as 1
  array.each do |letter|
    if hash.include?(letter)
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end

  odd = 0
  hash.each_value do |value|
    if value % 2 != 0
      odd += 1
    end
  end
  return odd <= 1

end
