
def palindrome_permutation?(string)
  string_chars = string.split("")
  chars = Hash.new(0)
  string_chars.each do |char|
    if chars.has_key?(char)
      chars.delete(char)
    else
      chars[char] += 1
    end
  end
  return chars.length <= 1
end # method
