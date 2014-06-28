#!/usr/bin/env ruby

def collatz(num)
  sequence = Array.new
  sequence.push(num)
  while sequence.last != 1
    if sequence.last.even?
      sequence.push(sequence.last/2)
    else
      sequence.push(3*sequence.last + 1)
    end
  end
  return sequence.size
end

print "Max Value: "
max_value = gets.chomp.to_i # enter 1,000,000

largest = 0
x_val = 0
max_value.times do |x| 
  if x == 0
    next
  end
  num_terms = collatz(x)
  if num_terms >= largest
     largest = num_terms
     x_val = x
  end
end

puts "size of chain: #{largest.to_s}"
puts "starting number: #{x_val.to_s}"

# Answer is 837799