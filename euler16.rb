#!/usr/bin/env ruby

print "Base 2 with exponent: "
exp = gets.chomp.to_i # set to 1000

val = (2**exp).to_s

answer = val.split(//).map {|x| x.to_i }.reduce { |sum,x| sum + x }

print "The sum of the digits is: #{answer} \n"

# Answer is 1366