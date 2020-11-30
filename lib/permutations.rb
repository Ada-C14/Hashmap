
def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash = {}

  string1.length.times do |index|
    hash.keys.include? hash[string1[index]] ? hash[string1[index]] += 1 : hash[string1[index]] = 1
  end

  string2.length.times do |index|
    hash[string2[index]] += 1 if hash.keys.include? string2[index]
  end

  return hash.values.all?{ |value| value.even? }
end

# p permutations?('pasta', 'atsap')