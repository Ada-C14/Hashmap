def intersection(list1, list2)

    h = Hash.new(0)

    list1.each do |n|
      h[n] += 1
    end

    list2.each do |n|
      h[n] += 1
    end

    ans = []

    h.each do |key, val|
      ans << key if val > 1
    end

    return ans
end