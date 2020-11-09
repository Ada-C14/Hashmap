#Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
def permutations?(string1, string2)
  hash1 = {}
  string1.length.times do |i|
    char = string1[i]
    if hash1[char]
    hash1[char] += 1 
    else
    hash1[char] = 1
    end
  end
  hash2 = {}
  string2.length.times do |i|
    char = string2[i]
    if hash2[char]
    hash2[char] += 1 
    else
    hash2[char] = 1
    end
  end

  if hash1 == hash2
    return true
  else 
    return false
  end
end


