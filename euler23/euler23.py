#!/usr/bin/env python

max = 28124

def properdivisors(n):
    if n == 1:
        return []
    f = [1]
    for i in range(2,n+1):
        if n%i == 0:
            f.append(i)
    return f

def isabundant(n):
    if n == []:
        return False
    s = sum(n[0:len(n)-1])
    if s > n[len(n)-1]:
        return True
    else:
        return False

possible_sums = range(1,max)

abundant_nums = [i for i in possible_sums if isabundant(properdivisors(i))]

for i in abundant_nums:
    for j in abundant_nums:
        if i+j in possible_sums:
            possible_sums.remove(i+j)

print sum(possible_sums)