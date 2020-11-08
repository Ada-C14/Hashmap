
def permutations?(string1, string2)
  return false if string1.length != string2.length

  # initialize each value at 0
  hash = Hash.new(0)

  # char is the key
  # increase count by one each time char shows up in the string
  string1.each_char do |char|
    hash[char] += 1
  end

  # checks if the char is found in the hash and the count is not zero
  string2.each_char do |char|
    if hash[char] != 0
      hash[char] -= 1 #prevents the character from being used again
    else
      return false
    end
  end

  return true
end
