#!/usr/bin/env ruby

values = Array.new
(1..1000000).each do |x|
  if x.to_s.reverse == x.to_s and x.to_s(2).reverse == x.to_s(2)
    values << x
  end
end

puts values.reduce(:+)
