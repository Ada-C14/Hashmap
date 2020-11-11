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

  return lookup.values.all?
end
