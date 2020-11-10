def palindrome_permutation?(string)
  hash = Hash.new
  count = 0

  array = string.split("")

  if array.length == 0
    return true
  end

  array.each do |letter|
    hash[letter] = array.count(letter)
  end

  hash.keys.each do |value|
    if hash[value].odd?
      count += 1
    end
  end

  if count == 1 ||  count == 0
    return true
  end

  return false
end
