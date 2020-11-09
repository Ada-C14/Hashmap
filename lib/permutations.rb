def permutations?(string1, string2)

  return false if string1.length != string2.length

  hash_table = generate_hash_table(string1.chars)

  string2.chars.each do |char|
    index = to_ascii(char) % string1.length
    if hash_table[index].empty?
      return false
    else
      hash_table[index] << char
    end
  end

  #if any bucket has an uneven number of elements, then not a palindrome
  if hash_table.any? { |element| element.length % 2 == 1 }
    return false
  else
    return true
  end

end

def generate_hash_table(list)
  hash_table = Array.new(list.length) { Array.new }
  list.each do |char|
    index = to_ascii(char) % list.length
    hash_table[index] << char
  end
  return hash_table
end

#hash function to sort based on ASCII value (ignoring case) mod shortest string length
#uppercase letters are 65-90
#lowercase letters are 97-122
def to_ascii(char)
  if ("A".."Z").include? char
    return char.ord - 65
  elsif ("a".."z").include? char
    return char.ord - 97
  else
    raise ArgumentError, "Invalid character encountered. Program exiting."
  end
end
