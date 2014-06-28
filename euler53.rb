#!/usr/bin/env ruby

def fact(int)
  if int == 0
    return 1
  else
    return (1..int).reduce(:*)
  end
end

count = 0

(1..100).each do |n|
  (1..100).each do |c|    
    if c <= n
      value = fact(n)/(fact(c)*fact(n-c))
      if value > 1000000 then count += 1 end
    end
  end
end

puts count