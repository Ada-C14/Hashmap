
def palindrome_permutation?(string)
  return true if string.length == 0

  palindrome_check = Hash[*string.split('').collect{ |a| [a, 0] }.flatten]
  return string.length/2 == palindrome_check.length || (string.length + 1) /2 == palindrome_check.length ? true : false
end # method
