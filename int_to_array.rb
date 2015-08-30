def int_to_array(int)
  return int.to_s.chars.map { |x| x.to_i }
end
