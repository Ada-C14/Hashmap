def permutations?(string1, string2)
  return true if string1 == string2

  hash = {}
  hash_2 = {}

  string1.each_char do |letter|
    hash[letter] = string1.count(letter)
  end


  string2.each_char do |letter|
    hash_2[letter] = string2.count(letter)
  end

  hash == hash_2

end

