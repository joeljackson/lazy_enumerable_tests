require 'prime' 
INFINITY = 1.0 / 0

p (1..INFINITY).lazy.map{|n| n**2+1}. select{|m| m.prime?}.take(10).to_a
