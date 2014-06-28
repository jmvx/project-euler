def itoa(int)
  return int.to_s.split(//).map { |x| x.to_i }
end

def fact(int)
  if int == 0
    return 1
  else
    return (1..int).reduce(:*)
  end
end

answer = Array.new

(3..50000).each do |num|
  digits = itoa(num)
  sum = digits.map {|x| fact(x) }.reduce(:+)
  if sum == num
    answer << num
  end
end

puts "Sum of answers = #{answer.reduce(:+)}"


