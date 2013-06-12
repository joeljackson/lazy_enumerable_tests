require 'benchmark'

array = (0..1000000).to_a

Benchmark.bm(30) do |m|
  m.report("Non Lazy:") do
    array.map do |element|
      element * 2
    end.select do |element|
      (element/2)%2 == 1
    end
  end

  m.report("Lazy, no evaluation:") do
    array.lazy.map do |element|
      element * 2
    end.select do |element|
      (element/2)%2 == 1
    end    
  end

  m.report("Lazy, with evaluation:") do
    result = array.lazy.map do |element|
      element * 2
    end.select do |element|
      (element/2)%2 == 1
    end    
    variable = result.to_a[300]
  end
end