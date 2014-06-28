#!/usr/bin/env ruby

require 'prime'

def checkprimefactors(nums,f)
  isvalid = true
  nums.each do |x|
    factors = Prime.prime_division(x)
    if factors.size == f then isvalid = true
    else isvalid = false
      break
    end
  end
  return isvalid
end

answer = Array.new
num_prime_factors = 4
start = 2

while answer.size < (num_prime_factors-1)
  a = (start..start+(num_prime_factors-1)).to_a
  if checkprimefactors(a,num_prime_factors)
    print "#{a} are the values"
    answer << a
    break
  end
  start += 1
end