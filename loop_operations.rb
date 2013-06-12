require 'benchmark'

array = (0..10000000).to_a

Benchmark.bm do |m|
  m.report do
    array.each do |e|
    end
  end

  m.report do
    array.each do |e|
      e + 1
    end
  end

  m.report do
    array.each do |e|
      e + 1
      e + 1
    end
  end

  m.report do
    array.each do |e|
      e + 1
      e + 1
      e + 1
    end
  end
end