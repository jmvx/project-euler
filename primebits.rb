def primebits(max)
  oldvalue = 0
  Prime.each(max) do |p|
    newvalue = 1 << p
    oldvalue = (oldvalue | newvalue)
  end
  return oldvalue
end