#!/usr/bin/env ruby

test = 1

while 1
  values = (1..6).map {|x| (test*x).to_s.split(//).sort }
  if values.uniq.size == 1
    puts test
    break
  else
    test += 1
  end
end