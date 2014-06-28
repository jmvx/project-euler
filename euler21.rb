#!/usr/bin/env ruby

def factor(num)
  factors = Array.new
  (1..Math.sqrt(num).to_i).each do |y| 
    if num % y == 0 then
       factors << y
       factors << num / y unless Math.sqrt(num) == y or y == 1 or y == num
    end
  end
  return factors
end

factorsums = (0...10000).map { |x| factor(x).reduce(:+) }

answer = 0
(1...10000).each do |x|
  if factorsums[factorsums[x]] == x and factorsums[x] != x
    answer += x
  end
end

puts answer
