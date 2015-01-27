#!/usr/bin/env python

f = open('names.txt', 'r')
names = f.read().replace("\"", "").split(',')
names.sort()

name_score = []
for i, name in enumerate(names):
    score = 0
    for c in name:
        score += ord(c) % 65 + 1
    name_score.insert(i,score*(i+1))

print sum(name_score)