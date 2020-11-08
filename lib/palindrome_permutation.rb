
def palindrome_permutation?(string)
  array = string.chars

  hash = {}
  hash.default = 0
  array.each do |char|
    hash[char] += 1
  end

  array.each do |char|
    if hash[char] % 2 == 0
      hash[char] = 0
    elsif hash[char].odd?
      hash[char] = 1
    end
  end

  sum_odd_chars = hash.sum{ |key, value| value }

  return false if sum_odd_chars > 1
  return true if sum_odd_chars <= 1

end


