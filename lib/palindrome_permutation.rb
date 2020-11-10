#Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.
# palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome

# Odd number = false
# Even number = true
def palindrome_permutation?(string)
  letter_hash = {}
  odd = []
  string = string.chars

  string.each do |char|
    if letter_hash[char].nil?
      letter_hash[char] = 1
    else
      letter_hash[char] += 1
      end
  end
  letter_hash.each do |key, value|
    if value.odd?
      odd << value
      if odd.length > 1
        return false
      end
    end
  end
  (odd.length > 1) ?  false : true
end

print palindrome_permutation?("carrace")