#!/usr/bin/env python

import math

def fifthpower(n):
    
    sum = 0
    while n != 0:
        x = n%10
        sum += x**5
        n = math.floor(n/10)
    return sum

x = 2
sum = 0
while x < 1000000:
    if x == fifthpower(x):
        sum += x
    x = x + 1

print sum