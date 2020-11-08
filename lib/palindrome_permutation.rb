
def palindrome_permutation?(string)

  hash = Hash.new(true)

  # if the letter shows up an odd number of times
  # set to false
  # even number of times -> true
  string.each_char do |char|
    if hash[char] == true
      hash[char] = false
    else
      hash[char] = true
    end

  end

  false_count = 0

  # count the number of false values
  hash.each do |key, value|
    if value == false
      false_count += 1
    end
  end

  if false_count > 1
    return false
  else
    return true
  end
end # method

