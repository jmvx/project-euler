#!/usr/bin/env ruby
require 'prime'

def consecprimes(start,numprimes)
  primes = Prime.first numprimes+start
  if start != 0
    (1..start).each { primes.shift } 
  end
  return primes
end

maxval = 0
value = 0
(0..10).each do |start|
  answer = 0
  (1..1000).each do |terms|
    answer = consecprimes(start,terms).reduce(:+)
    if answer >= 953 and answer < 1000000 and answer.prime?
      if terms >= maxval
        maxval = terms
        value = answer
      end
    end
  end
end

puts "answer: #{value} -- terms: #{maxval}"


