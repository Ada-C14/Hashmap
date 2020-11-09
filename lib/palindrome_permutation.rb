
def palindrome_permutation?(string)
  return true if string.length == 0
  string_array = string.split(//)
  hash = {}

  string_array.each do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end

  hash.each_value do |value|
    value.odd? ? (return false) : (return true)
  end
end # method

