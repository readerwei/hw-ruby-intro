def sum(arr)
  summation = 0
  for i in 0...arr.size
    summation = summation + arr.at(i)
  end
  return summation
end

arr1 = Array[1,3,4]
puts arr1.max
