
def permutations?(string1, string2)
  array1 = string1.split(//)
  array2 = string2.split(//)

  new_hash = {}

  array1.each do |letter|
    if new_hash[letter] == nil
       new_hash[letter] = 1
    else
      new_hash[letter] += 1
    end
  end
  second_hash = {}
  array2.each do |letter|
    if second_hash[letter] == nil
      second_hash[letter] = 1
    else
      second_hash[letter] += 1
    end
  end
  #hello
  # h = 1, e = 1, l = 2, 0 = 1
  if new_hash == second_hash
    return true
  else
    return false
  end


end
