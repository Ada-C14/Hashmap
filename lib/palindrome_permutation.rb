# Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.
#
# palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome

def palindrome_permutation?(string)
  lookup_hash = {}

  length = string.length

  length.times do |i|
    letter = string[i]

    if lookup_hash[letter]
      lookup_hash.delete(letter)
    else
      lookup_hash[letter] = true
    end
  end

  return lookup_hash.count <= 1
end
