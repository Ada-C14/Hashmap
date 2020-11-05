
def permutations?(string1, string2)

  return false if string1.length != string2.length

  string1_array = string1.chars
  string2_array = string2.chars

  hash = {}
  string1_array.each do |element|
    hash[element] = string1_array.count(element)
  end

  string2_array.each do |element|
    if hash[element] != string2_array.count(element)
      return false
    end
  end

  return true
end
