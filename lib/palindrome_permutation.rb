
def palindrome_permutation?(string)
  return true if string.empty?
  max = string.length.even? ? string.length/2 : (string.length/2) + 1
  palindrome_check = Hash[*string.split('').collect{ |a| [a, 0] }.flatten]
  return palindrome_check.length == max
end # method
