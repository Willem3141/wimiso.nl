#!/usr/bin/python3

print('var infixDatabase = {')

with open('infix-database-raw') as f:
    for line in f:
        navi = line[10:27].strip()
        infixes = line[64:90].strip().replace("<1><2>", ".").replace("<3>", ".")
        print('    "{}": "{}",'.format(navi, infixes))

print('}')
