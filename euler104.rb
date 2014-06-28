#!/usr/bin/env ruby

$value1 = 0
$value2 = 0

def itoa(int) # changes an integer into an array of its digits
  return int.to_s.chars.map { |x| x.to_i }
end

def fib(iter) # calculates the fibonacci sequence, returns last fibonacci number
  newval = 0
  if iter == 0
    $value1 = 1
    return $value1
  elsif iter == 1
    $value2 = 1
  else 
    newval = ($value1 + $value2)
    $value1 = $value2
    $value2 = newval
  end
  return $value2
end

k = 0
while 1
  beginning = Time.now
  fibnum = itoa(fib(k))
  lastpan = fibnum.last(9)
  firstpan = fibnum.first(9)
  lastpan.delete(0)
  firstpan.delete(0)
  if firstpan.uniq.size == 9 and lastpan.uniq.size == 9
    puts "ANSWER: #{k+1}"
    break
  end
  k += 1
end