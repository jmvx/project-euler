#!/usr/bin/env ruby

def factorial(n)
  values = (1..n).reduce(:*)
  return values
end

print "Value for n: "
nfact = gets.chomp.to_i # 100

val = factorial(nfact).to_s

answer = val.split(//).map {|x| x.to_i }.reduce { |sum,x| sum + x }

print "The sum of the digits is: #{answer} \n"

# Answer is 648