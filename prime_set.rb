def prime_set(max)
  primes = Set.new(Prime.take_while {|x| x < max})
  return primes
end