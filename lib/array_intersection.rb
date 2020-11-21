# frozen_string_literal: true

def intersection(list1, list2)
  # Make sure list1 and list2 are lists and have length.
  return [] if list1.empty? || list2.empty?

  # Build hash
  intersect = {}
  list1.each do |num|
    if intersect.key?(num)
      intersect[num] += 1
    else !intersect.key?(num)
         intersect[num] = 1
    end
  end
  list2.each do |num|
    if intersect.key?(num)
      intersect[num] += 1
    else !intersect.key?(num)
         intersect[num] = 1
    end
  end

  # Find the answer by reviewing the hash

  # return intersect.key if intersect.value > 1
  result = []
  intersect.each do |key, value|
    result << key if value > 1
  end

  result
end
