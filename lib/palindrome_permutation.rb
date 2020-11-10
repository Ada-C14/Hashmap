
def palindrome_permutation?(string)

 
end # method


def is_palindrome(s)
  if s.length < 2
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end