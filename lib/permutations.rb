
def permutations?(string1, string2)
  return false if string1.length != string2.length

  chars1 = string1.split("")
  chars2 = string2.split("")

  chars = Hash.new(0)
  chars1.each do |char|
    chars[char] += 1
  end

  chars2.each do |char|
    if !chars.has_key?(char) || chars[char] == 0
      return false
    else
      chars[char] -= 1
    end
  end
  return true
end
