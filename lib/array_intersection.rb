def intersection(list1, list2)
  tally = Hash.new

  list1.each do |num|
    tally[num] = false
  end

  list2.each do |num|
    status = tally[num]
    if status.nil?
      status = false
    else
      status = true
    end
    tally[num] = status
  end

  repeats = tally.select { |key, value| value == true }

  return repeats.keys
end