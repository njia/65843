#!/bin/env python

line = raw_input("Input string with space: ")
line = " ".join(line.split())

print line.replace(" ", "%20")
