#!/usr/bin/env ruby

require 'prime'
require 'set'

def quadprime(n,a,b)
  return n**2 + a*n + b
end

def primeset(max)
  primes = Set.new(Prime.take_while {|x| x < max})
  return primes
end

primes = primeset(2000000)

product = 0
numprimes = 0
(-999...1000).each do |a|
  (-999...1000).each do |b|
    n = 0
    while primes.include?(quadprime(n,a,b))
      n = n+1
    end
    if n > numprimes
      product = a*b
      numprimes = n
    end
  end
end

puts "Product: #{product} -- Number of primes: #{numprimes}"