
def permutations?(string1, string2)

  letters_1 = Hash.new(0)
  letters_2 = Hash.new(0)

  string1.each_char{|char| letters_1[char] += 1}

  string2.each_char{|char| letters_2[char] += 1}

  letters_1.each_key{|letter| return false unless letters_1[letter] == letters_2[letter]}

  return true
end
