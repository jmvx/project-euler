#!/usr/bin/env ruby

def itoa(int)
  return int.to_s.chars.map { |x| x.to_i }
end

def ispan(num)
  num.delete(0)
  if num.uniq.size == num.size and num.size == 9
    return true
  else
    return false
  end
end

largest = 0

(1..9999).each do |num|
  array = itoa(num * 1) # adding first value
  (2..9999).each do |n|
    array += itoa(num * n) # add next product
    if ispan(array) # check for pandigitalness
      if array.join.to_i >= largest
        largest = array.join.to_i
      end
      # then continue to find out if there is a larger one
    elsif !ispan(array) and array.size >= 9
        array.clear
        break
    end
  end
end

puts largest