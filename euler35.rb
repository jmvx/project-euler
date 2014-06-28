#!/usr/bin/env ruby
require 'Prime'

def checkcirc(num)
  num.to_s.size.times { |x| if num.to_s.split(//).rotate(x).join.to_i.prime? == false then return false end } 
  return true
end

primes = Array.new
Prime.each(1000000) do |p| 
  if checkcirc(p) then primes << p end
end

puts primes.size