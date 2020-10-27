def palindrome_permutation?(string)
  letter_hash = {}

  string.split("").each do |letter|
    if letter_hash[letter] == nil
      letter_hash[letter] = 1
    else
      letter_hash[letter] += 1
    end
  end

  midpoint = 0
  letter_hash.each_value do |times|
    if times % 2 != 0
      midpoint += 0
    end
  end

  return midpoint <= 1
end
