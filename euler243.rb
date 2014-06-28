#!/usr/bin/env ruby

require 'prime'

def totient(denom)
  primef = Prime.prime_division(denom)
  tot = denom
  primef.each do |p|
    tot *= 1 - (1.0/p[0])
  end
  return tot.to_i
end

num = 15499
denom = 94744

lowerbound = 0
upperbound = 0
(1..10).each do |y|
  primes = Prime.first(y)
  lowerbound = primes.take((primes.size)-1).reduce(:*)
  upperbound = primes.reduce(:*)
  if Rational(totient(upperbound),upperbound-1) < Rational(num,denom)
    break
  end
end

(lowerbound..upperbound).step(lowerbound) do |d|
  value = (denom * totient(d)) - (num * d) + num
  if value < 0
    puts "Answer: #{d}"
    break
  end
  d = d+1
end