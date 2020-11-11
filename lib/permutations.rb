def permutations?(string1, string2)
  lookup_string1 = {}
  string1_array = string1.chars
  string1_array.each do |letter|
    if lookup_string1[letter] == nil
      lookup_string1[letter] = 1
    else
      lookup_string1[letter] = lookup_string1[letter] + 1
    end
  end

  string2_array = string2.chars
  string2_array.each do |letter|
    if lookup_string1[letter] == nil
      return false
    else
      lookup_string1[letter] = lookup_string1[letter] - 1
    end
  end

  return lookup_string1.values.all?(0)
end
