require 'benchmark'

array = (0..10000000).to_a

Benchmark.bm do |m|
  m.report do
    array.select do |element|
      element % 2 == 0
    end.map do |element|
      element * 2
    end
  end

  m.report do
    array.inject([]) do |acc, element|
      if element % 2 == 0
        acc.push(element * 2)
      else
        acc
      end
    end
  end

  m.report do
    array.each do |e|
      a = e + 1
    end
    array.each do |e|
      a = e + 1
    end
  end

  m.report do
    array.each do |e|
      a = e + 1
      b = e + 1
    end
  end
end