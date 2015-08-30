#!/usr/bin/env python

import math

def is_prime(num):
    max = int(math.sqrt(num)) + 1
    for x in range(2, max):
        if num % x == 0: return False
    return True

def prime_list(num):
    primes = []
    for x in range(2, num + 1):
        if is_prime(x): primes.append(x)
    return primes

for x in range(1, 100):
    if is_prime(x) == True:
        print x