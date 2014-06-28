#!/usr/bin/env ruby

digits = (0..9).to_a
print digits.permutation(digits.size).to_a.at(1000000-1).join + "\n"
