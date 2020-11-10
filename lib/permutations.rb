
# Time complexity: O(n)
# Space complexity: O(n)

def permutations?(string1, string2)
  # Step1: Build a hash with a helper function
  # key = char
  # value = count
  hash = build_hash(string1)

  string2.each_char {|c|
    # if count is nil, that means the character is not there
    # if the count is a number, that means the character is there
    if hash[c].nil?
      return false
    else
      hash[c] -= 1
    end
  }

  hash_value = hash.values # return an array of hash's values
  hash_value.each do |value|
    if value != 0
      return false
    end
  end

  return true

end

def build_hash(str)
  h = {}
  str.each_char do |c|
    if h[c].nil? # if it is nil/true = doesn't exit yet in the hash
      h[c] = 1 # set the value to 1
    else 
      h[c] += 1  # if it is false, already exit in the hash. Increment the count by 1 each time if found. 
    end
  end
  return h
end

# build_hash("hello") => {'h' => 1, 'e' => 1, 'l' => 2,'o' => 1}
# string2.include?('h')
#   hash.key?('h')
# s1 = 'hello', s2 ='ehllo'
   # s1 = 'hello', s2 ='q'
   # s1 = 'hello', s2 ='helo'
   # s1 = 'hello', s2 ='hellllllo'
   # s1 = 'hello', s2 ='he'
   # resuse the hash
# str = "hello"
# puts build_hash(str)
# c = 'h'
# h['h'] = 1
# h = {'h' => 1}
# c = 'e'
# h['e'] = 1
# h = {'h' => 1, 'e' => 1}
# c = 'l'
# h['l'] = 1
# h = {'h' => 1, 'e' => 1, 'l' => 1}

# s1 = "helloo"
# s2 = "eelloh"
# puts permutations?(s1, s2)