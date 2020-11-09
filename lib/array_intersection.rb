def intersection(list1, list2)
    #   Add each element from the smaller array to the hash table.
    #  Lookup each element in the larger array in the hash table.
    #  If it’s found in the hash table, add it to the results array.
    # Expected: Time Complexity: O(n) + O(m) = O(n + m), Space complexity: O(2n) = O(n) if n < m

#find out which array is shorter
results = []
  if list1.length < list2.length
    shorter_list = list1
    longer_list = list2
  else
    shorter_list = list2
    longer_list = list1
  end
  #creates a hash with keys from shorter array
  hash = Hash[shorter_list.collect { |item| [item, -1] } ]
  
  #iterates through the longer array and search for arrays value equal to key in hash
  longer_list.each do |num|
    if hash.key? num
      results << num
    end
  end
return results
end

list1 = [2, 3, 4]
list2 = [4, 5, 6]
puts "#{intersection(list1, list2)}"