
def permutations?(string1, string2)
  chars1 = string1.split("")
  chars2 = string2.split("")

  chars = Hash.new(0)
  chars1.each do |char|
    chars[char] += 1
  end

  chars2.each do |char|
    chars[char] -= 1
  end

  return !chars.any? {|k, v| v != 0 }
end
