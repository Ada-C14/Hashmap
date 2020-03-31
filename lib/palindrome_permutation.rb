
def palindrome_permutation?(string)

  hash = {}
  string_array = string.split("")
  string_array.each do |letter|
    hash[letter] = true
  end

  string_array.each do |letter|
    hash[letter] = !hash[letter]
  end
  # even
  # if the length is even we make each letter is repeat once
  if string_array.length % 2 == 0
    hash.values.each do |value|
      if value == false
        return false
      end
    end
    return true
  end

  # odd
  # if the length is odd we each letter will repeat once the the expect of one letter only once
  if string_array.length % 2 == 1
    odd_numbers = 0
    hash.values.each do |value|
      if value == false
        odd_numbers += 1
      end
    end
    return odd_numbers == 1
  end
end # method
