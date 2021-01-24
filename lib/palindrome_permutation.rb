
def palindrome_permutation?(string)

  string_array = string.split("")

  hash = Hash.new(0)
  string_array.each do |char|
    if hash.has_key?(char)
      hash.delete(char)
    else
      hash[char] += 1
    end
  end
  return hash.length <= 1

end
