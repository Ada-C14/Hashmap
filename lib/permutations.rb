
def permutations?(string1, string2)
  # Make sure list1 and list2 are lists and have length.
  if string1.nil? || string2.nil?
    return true
  end


  # Build hash
  char_count1 = {}
  string1.each_char do |char|
    if char_count1.key?(char)
      char_count1[char] += 1
    else
      char_count1[char] = 1
    end
  end

  char_count2 = {}
  string2.each_char do |char|
    if char_count2.key?(char)
      char_count2[char] += 1
    else
      char_count2[char] = 1
    end
  end

  # Find the answer by reviewing the hash
  if char_count1 == char_count2
    return true
  else
    return false
  end

end
