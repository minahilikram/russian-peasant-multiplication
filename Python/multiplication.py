#!/usr/bin/env python
from math import *

def main():
    multiplier = int(raw_input('multiplier?'))
    multiplicand = int(raw_input('multiplicand?'))
    print (recursive(multiplier, multiplicand))
    print (iterative(multiplier, multiplicand))

def recursive(multiplier, multiplicand):
    answer = int(0)
    if (multiplier == 0):
        answer = 0
    elif (multiplier == 1):
        answer = multiplicand
    elif ((multiplier > 1) & ((multiplier % 2) == 0)):
        answer = recursive((multiplier/2), (multiplicand*2))
    elif ((multiplier > 1) & ((multiplier % 2) == 1)):
        answer = (multiplicand + (recursive((multiplier/2), (multiplicand*2))))
    return answer
    
def iterative(multiplier, multiplicand):
    answer = int(0)
    while (multiplier > 0):
        if ((multiplier % 2) == 1):
            answer = (multiplicand + answer)

        multiplier = multiplier/2
        multiplicand = multiplicand*2
    return answer

main()
