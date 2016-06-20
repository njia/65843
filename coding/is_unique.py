#!/bin/env python

line = raw_input("Please input a string: ")

for char in line:
  if list(line).count(char) > 1:
    print "duplicate char found: ", char
    exit()

print "All characters are unique"

