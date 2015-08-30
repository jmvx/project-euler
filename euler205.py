#!/usr/bin/env python

from itertools import product

c_dice = range(1, 7) # 6 sided
p_dice = range(1,5) # 4 sided

psums = [sum(p) for p in product(p_dice,repeat=9)]
csums = [sum(c) for c in product(c_dice,repeat=6)]

pset = set(psums)
cset = set(csums)

pcount = [(p,psums.count(p)) for p in pset]
ccount = [(c,csums.count(c)) for c in cset]

win = 0
loss = 0
tie = 0

for (pscore,pfreq),(cscore,cfreq) in product(pcount,ccount):
    numtimes = pfreq * cfreq
    if pscore > cscore: win += numtimes
    elif pscore < cscore: loss += numtimes
    elif pscore == cscore: tie += numtimes

total = win + loss + tie

print float(win)/float(total)