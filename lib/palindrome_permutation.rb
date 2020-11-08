def palindrome_permutation?(string)
  return true if string.length == 0

  hash = {}
  string.each_char do |char|
    if hash.key?(char)
      hash[char] += 1
    else
      hash[char] = 1  
    end  
  end

  odd_check = 0
  if string.length.even?
    hash.each do |key, value|
      return false if value.odd? 
    end
  else
    hash.each do |key, value|
      odd_check += 1 if value.odd?
      return false if odd_check > 1
    end
  end
  return true
end 
