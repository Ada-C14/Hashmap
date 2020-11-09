
def palindrome_permutation?(string)
  return true if string.empty?

  hash_table = hash_function(string.chars)
  if hash_table.filter { |element| element.length.odd? }.length > 1
    return false
  else
    return true
  end
end

def hash_function(list)
  hash_table = Array.new(26) { Array.new }

  list.each do |char|
    index = to_ascii(char)
    hash_table[index] << char
  end

  return hash_table
end


def to_ascii(char)
  if ("A".."Z").include? char
    return char.ord - 65
  elsif ("a".."z").include? char
    return char.ord - 97
  else
    raise ArgumentError, "Invalid character encountered. Program exiting."
  end
end
