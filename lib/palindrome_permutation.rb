# frozen_string_literal: true

def palindrome_permutation?(string)
  return true if string.empty?

  odd_check = Hash.new(0)

  string.each_char do |char|
    # 1. Assigning each char of the string to the key of odd_check hash
    odd_check[char] += 1
    # 2. Assign the value of the character in integer

    # 3. Make a variable to count the number of odds
  end
  odds = 0
  odd_check.each do |char, count|
    if odd_check[char] % 2 != 0
      odds += 1
    end
  end

  if odds < 2
    return true
  else
    return false
  end

end
