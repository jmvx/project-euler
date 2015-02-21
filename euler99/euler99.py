#!/usr/bin/env python

import math

def explog(a,b):
    return int(b)*math.log(int(a))

file = open('base_exp.txt','r')

prev = [1,1]
count = 1
largecount = 1
for line in file:
    next = line.split(',')
    next[1] = next[1].replace("\n","")
    if explog(prev[0],prev[1]) < explog(next[0],next[1]):
        prev = next
        largecount = count
    count = count+1

print next, largecount
