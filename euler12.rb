#!/usr/bin/env ruby

print "length limit: "
val = gets.chomp.to_i
trinum = 0
iter = 1

while 1
  trinum += iter
  factors = Array.new
  (1..Math.sqrt(trinum)).each do |y| 
    if trinum % y == 0 then
       factors << y
       factors << trinum / y unless Math.sqrt(trinum) == y
    end
  end
  iter += 1
  
  if factors.size >= val
    puts "\n#{trinum}"
    break
  end
end