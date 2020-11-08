
def palindrome_permutation?(string)
  string_array = string.split("")
  letters_hash = {}

  string_array.each do |letter|
    if letters_hash.keys.include?(letter)
      letters_hash[letter] += 1
    else
      letters_hash[letter] = 1
    end
  end
  return true if letters_hash.select { |letter,value| value%2 != 0}.keys.length <= 1
  return false

end
