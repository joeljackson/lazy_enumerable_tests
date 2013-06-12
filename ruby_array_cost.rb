require 'benchmark'

array = (1..10000000).to_a

Benchmark.bm(30) do |m|
  m.report("One loop:") do 
    array.each do |a|
    end
  end

  m.report("One loop with addition:") do 
    array.each do |a|
      a + 1
    end
  end

  m.report("Two loops:") do 
    array.each do |a|
    end.each do |a|
    end
  end

  m.report("Two loops with addition:") do 
    array.each do |a|
      a + 1
    end.each do |a|
      a + 1
    end
  end

  m.report("One loop with two additions:") do
    array.each do |a|
      a + 1
      a + 1
    end
  end
end