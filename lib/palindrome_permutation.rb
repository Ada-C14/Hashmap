# time: O(n) for creating hash
# space: O(n) for creating hash

def palindrome_permutation?(string)
  return true if string.empty?
  max = string.length.even? ? string.length/2 : (string.length/2) + 1
  palindrome_check = Hash[*string.split('').collect{ |a| [a, 0] }.flatten]
  return palindrome_check.length == max || palindrome_check.length == 1 # if there is only one character hashed
end # method
