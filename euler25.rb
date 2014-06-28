#!/usr/bin/env ruby

# Fibonacci numbers using the recursive algorithm (slow)

def fib(val)
  val.times do |x| 
    if x == 0 then $sequence << 0
    elsif x == 1 then $sequence << 1
    else $sequence << $sequence.last(2).reduce(:+)
      if $sequence.last.to_s.size == 1000 then return true
      end
    end
  end
  return false
end
  
  answer = false
  val = 1
  while answer == false
    $sequence = Array.new
    answer = fib(val)
    val = val + 1
  end
  
  puts "Answer: #{$sequence.size-1}"

