#!/usr/bin/env ruby

def fact(int)
  if int == 0
    return 1
  else
    return (1..int).reduce(:*)
  end
end

puts fact(40)/(fact(20)*fact(20))
