# WITH HASH
def palindrome_permutation?(string)
  hash_table = {}
  populate_hash_table(hash_table, string.chars)
  #palindromes can only have one letter that does not repeat (center letter)
  hash_table.reject! { |key, value| value % 2 == 0 }
  if hash_table.length > 1
    return false
  else
    return true
  end
end

def populate_hash_table(hash_table, list)
  list.each do |element|
    if hash_table.include? element
      hash_table[element] += 1
    else
      hash_table[element] = 1
    end
  end
  return hash_table
end

# WITH ARRAY
# def palindrome_permutation?(string)
#   return true if string.empty?
#
#   hash_table = hash_function(string.chars)
#   #palindromes can only have one letter that does not repeat (center letter)
#   if hash_table.filter { |element| element.length.odd? }.length > 1
#     return false
#   else
#     return true
#   end
# end
#
# def hash_function(list)
#   hash_table = Array.new(26) { Array.new }
#
#   list.each do |char|
#     index = to_ascii(char)
#     hash_table[index] << char
#   end
#
#   return hash_table
# end
#
#
# def to_ascii(char)
#   if ("A".."Z").include? char
#     return char.ord - 65
#   elsif ("a".."z").include? char
#     return char.ord - 97
#   else
#     raise ArgumentError, "Invalid character encountered. Program exiting."
#   end
# end
