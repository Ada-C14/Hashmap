
def palindrome_permutation?(string)

  if string == nil || string.length == 0
    return true
  end


  string_array = string.chars
  hash = {}
  string_array.each_with_index do |element, index|
    hash[index] = element
  end

  string_array_reversed = string.reverse.chars
  string_array_reversed.each_with_index do |element, index|
    return false if hash[index] != element
  end

  return true
end
