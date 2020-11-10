#time complexity: O(log n)
#space complexity: O(log n)

def palindrome_permutation(str)
  string.downcase!
  string.gsub!(/[^a-z0-9\s]/i, '')    #removes all non-alphanumeric chars
  string.gsub!(/\s+/, '')    #removes spaces

  (string.size/2).times.all? do |index|
    string[index] == string[-index-1]  #returns true or false
  end
end
