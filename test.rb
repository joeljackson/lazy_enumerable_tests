require 'benchmark'

Benchmark.bm do |m|
  m.report do 
    (1..10000000).to_a.each do |a|
    end.each do |a|
    end
  end
end