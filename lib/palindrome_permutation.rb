
def palindrome_permutation?(string)

  hash = {}
  string.split("").each do |letter|
    if hash[letter].nil?
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end

  counts = hash.values
  odds = 0
  counts.each do |num|
    if num % 2 == 1
      odds += 1
    end
  end

  if odds > 1
    return false
  else
    return true
  end
 
end # method
