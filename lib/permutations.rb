def permutations?(string1, string2)
  array_1 = string1.split(//)
  array_2 = string2.split(//)
  hash = {}

  if array_1.length == 0 && array_2.length == 0
    return true
  elsif array_1.length != array_2.length
    return false
  end

  array_1.each do |element|
    if array_1.count(element) != array_2.count(element)
      return false
    end
  end

  index = 0
  array_2.each do |element|
    hash[element] = true
    index += 1
  end

  array_2.each do |letter|
    return false unless hash[letter]
  end

  return true
end

p permutations?("hello", "ehllo")