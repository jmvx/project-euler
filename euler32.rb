#!/usr/bin/env ruby

def itoa(int)
  return int.to_s.chars.map { |x| x.to_i }
end

def factor(num)
  factors = Array.new
  (1..Math.sqrt(num)).each do |y| 
    if num % y == 0 then
       factors << [y,num/y] unless Math.sqrt(num) == y #or y == 1
    end
  end
  return factors
end

def ispan(num)
  num.delete(0)
  if num.uniq.size == 9
    return true
  else
    return false
  end
end

productsum = Array.new
(1..9876).each do |product|
  f = factor(product)
  
  checkpan = f.map {|x| itoa(x[0]) + itoa(x[1]) + itoa(product) }
  checkpan.each do |digits|
    if ispan(digits)
      puts "#{digits} is pandigital!"
      productsum << digits[5..8].join.to_i
    end
  end
end

puts "Answer: #{productsum.uniq.reduce(:+)}"