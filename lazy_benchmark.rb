require 'benchmark'

array = (0..1000000).to_a

Benchmark.bm do |m|
  m.report do
    array.map do |element|
      element * 2
    end.select do |element|
      (element/2)%2 == 1
    end
  end

  m.report do
    array.lazy.map do |element|
      element * 2
    end.select do |element|
      (element/2)%2 == 1
    end    
  end

  m.report do
    result = array.lazy.map do |element|
      element * 2
    end.select do |element|
      (element/2)%2 == 1
    end    
    p result.to_a[300]
  end

end