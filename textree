#!/usr/bin/env python

import sys

try:
    filename = sys.argv[1]
except:
    print('Error: No input file given')
    sys.exit()

order = ['\part', '\chapter', '\section', '\subsection', '\subsubsection']
characters = ['│   ','│   ','│   ','│   ','│   ',]
kinds = []
names = []

with open(filename) as file:
    content = file.readlines()

# Loop over the whole file and extract the relevant lines
for line in content:
    if 'chapter{' in line or 'section{' in line or 'part{' in line:    
        kinds += [order.index(line.partition('{')[0])]
        names += [line.partition('{')[2][:-2]]

# Loop over the relevant lines
for i in range(len(kinds)):
    further = False
    # Loop over the lines ahead of the current one
    for j in range(len(kinds) - i - 1):
        # Check if there are other occurrences of the current depth level in the
        # depth no less than the current, but possibly greater
        if kinds[j + i + 1] == kinds[i]:
            further=True
        if kinds[j + i + 1] < kinds[i]: 
            break

    if further:
        terminator='├── '
    else:
        # If this is the final occurrence of this depth before returning to a
        # higher level, use the non continuing terminator and set the mere
        # continuing character to blank space for the depth one level higher
        # than the current one
        terminator='└── '
        characters[kinds[i]-1]='    '
    # If the current item is of a higher depth than the previous, reset the mere
    # continuing character
    if kinds[i] < kinds[i-1]:
        characters[kinds[i-1]-1] = '│   '

    # Print the characters relevant for each level of the current depth
    for j in range(kinds[i]-1):
        print(characters[j],end='')
    # Print the designated terminator and the name of the current item
    print(terminator + names[i])
