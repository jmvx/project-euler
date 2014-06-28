#!/usr/bin/env ruby

require 'prime'

def goldbachfalse(num)
  if num.prime?
    return true
  else
    Prime.each(num-2) do |prime|
      x = Math.sqrt((num - prime)/2)
      test = x.to_i
      if (test - x).abs <= Float::EPSILON
        return true
      end
    end 
    return false
  end
end

num = 9
while num.even? or goldbachfalse(num)
  num += 1
end

puts "Answer: #{num}"