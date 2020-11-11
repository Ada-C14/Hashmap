def permutations?(string1, string2)
  lookup = {}
  string1.chars do |letter|
    lookup[letter] = false
  end

  string2.chars do |letter|
    if lookup.include?(letter)
      lookup[letter] = true
    end
  end

  if lookup.values.all?
  else
    return false
  end
end
