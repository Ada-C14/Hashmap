
def palindrome_permutation?(string)
  return true if (string == nil || string.length == 0)

  hash = {}

  string.chars.each_with_index do |character|
    hash[character] = string.chars.count(character)
  end

  count_of_odds = 0
  hash.each do |key, value|
    if value % 2 == 1
      count_of_odds += 1
    end
  end

  if count_of_odds > 1
    return false
  else
    return true
  end

end

# This would work for actual palindromes, not palindrome permutations
# def palindrome_permutation?(string)
#
#   if string == nil || string.length == 0
#     return true
#   end
#
#
#   string_array = string.chars
#   hash = {}
#   string_array.each_with_index do |element, index|
#     hash[index] = element
#   end
#
#   string_array_reversed = string.reverse.chars
#   string_array_reversed.each_with_index do |element, index|
#     return false if hash[index] != element
#   end
#
#   return true
# end
