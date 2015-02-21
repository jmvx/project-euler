#!/usr/bin/env python

import math

def isprime(num):
    max = int(math.sqrt(num))+1
    for x in range(2,max):
        if num%x == 0: return False
    return True

def primelist(num):
    primes = []
    for x in range(2,num+1):
        if isprime(x): primes.append(x)
    return primes

for x in range(1,100):
    if isprime(x) == True:
        print x