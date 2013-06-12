array = [1,2,3,4,5]

p "Non Lazy"
p array.map do |element|
  p "map"
  element * 2
end.select do |element|
  p "select"
  (element/2)%2 == 1
end

p "Lazy"
p array.lazy.map do |element|
  p "map"
  element * 2
end.select do |element|
  p "select"
  (element/2)%2 == 1
end

p "No Eval"
array.lazy.map do |element|
  p "map"
  element * 2
end.select do |element|
  p "select"
  (element/2)%2 == 1
end
