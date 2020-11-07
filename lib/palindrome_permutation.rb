
def palindrome_permutation?(string)
  hash = create_hash(string)

  # if string length is even or empty
  if string.length % 2 == 0
    hash.each do |char, count|
      return false unless count % 2 == 0
    end
    return true

  # if string length is odd
  else
    odd_count = 0
    hash.each do |char, count|
      unless count % 2 == 0
        odd_count += 1
      end
      return false if odd_count > 1
    end
    return true
  end
end

def create_hash(string)
  hash = {}

  string.each_char do |char|
    if !hash[char]
      hash[char] = 1
    else
      hash[char] += 1
    end
  end

  return hash
end
