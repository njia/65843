#!/bin/env python

string_1 = raw_input("Input string1: ")
string_2 = raw_input("Input string2: ")

if len(string_1) != len(string_2):
  print string_1, "can't be a permutation of", string_2
  exit()

if cmp(sorted(list(string_1)),sorted(list(string_2))) == 0:
  print string_1, "is a permutation of", string_2

