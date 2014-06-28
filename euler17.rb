#!/usr/bin/env ruby

$ones = ["zero","one","two","three","four","five","six","seven","eight","nine"]
$tens = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
$other = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

all_words = Array.new

def hundreds(val)
  return $ones[val/100]
end

def tens(val)
  if val >= 10 and val <= 19
    $done = true
    return $tens[val%10]
  elsif val >= 20 
    return $other[val/10.floor - 2]
  end
end

def ones(val)
  return $ones[val]
end


(1..1000).each do |val|
  
  $done = false
  
  if val == 1000
    all_words << "one thousand"
    $done = true
    break
  end

  if val >= 100 and $done == false
    if val % 100 != 0
      all_words << hundreds(val) + " hundred and "
    else
      all_words << hundreds(val) + " hundred"
    end
  end

  val = val % 100

  if val >= 10 and $done == false
    all_words << tens(val) + " "
  end

  val = val % 10

  if val >= 1 and $done == false
    all_words << ones(val)
  end

end

puts all_words.map { |phrase| phrase.split }.flatten.map {|phrase| phrase.split(//)}.flatten.size