def intersection(list1, list2)
  return [] if list1.count == 0 || list2.count == 0
  
  longer_hash = {}
  if list1.count > list2.count
    longer_hash = Hash[list1.collect { |item| [item, true] }]
  else
    longer_hash = Hash[list2.collect { |item| [item, true] }]
  end

  intersection = []
  if list1.count > list2.count 
    list2.each do |num|
      intersection.push(num) if longer_hash.key?(num)
    end
  else 
    list1.each do |num|
      intersection.push(num) if longer_hash.key?(num)
    end
  end
  return intersection
end