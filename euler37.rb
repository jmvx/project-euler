#!/usr/bin/env ruby

require 'prime'

answers = Array.new
test = 11

while answers.size != 11
  
  valid_l = false
  valid_r = false
  
  if test.prime?
    test_r = test
    test_l = test
  
    # Remove from left
    while test_l > 7
      test_l = test_l % 10**Math.log10(test_l).floor
      if test_l.prime?
        valid_l = true
      else 
        valid_l = false
        break
      end
    end

    # Remove from right
    while test_r > 7 and valid_l == true
      test_r = test_r/10
      if test_r.prime?
        valid_r = true
      else 
        valid_r = false
        break 
      end
    end
  
    # Add to answers array
    if valid_l == true and valid_r == true
      answers << test
    end
  end
  test += 1
end

puts answers.reduce(:+)