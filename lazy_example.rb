array = [1,2,3]

p "Non Lazy"
a1 = array.map do |element|
  p "map"
  element * 2
end.select do |element|
  p "select"
  (element/2)%2 == 1
end

p a1.to_a

p "Lazy"
a3 = array.lazy.map do |element|
  p "map"
  element * 2
end.select do |element|
  p "select"
  (element/2)%2 == 1
end

p a3.to_a

p "No Eval"
array.lazy.map do |element|
  p "map"
  element * 2
end.select do |element|
  p "select"
  (element/2)%2 == 1
end
