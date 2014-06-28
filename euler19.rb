#!/usr/bin/env ruby

require 'date'

answer = 0
(1901..2000).each do |year|
  (1..365).each do |day|
    d = Date.ordinal(year,day)
    if d.mday == 1 and d.wday == 0
      answer += 1
    end
  end
end

puts answer