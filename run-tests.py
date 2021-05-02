import json
import os

jsondat = {}

with open('./tests.json','r') as jsonfile:
    jsondat = json.load(jsonfile)

for test in jsondat:
    print('Running test: {}'.format(test))
    schmName = jsondat[test].split('.spice')[0]
    os.system('ngspice -b -r {}.raw -o {}.out {}.spice'.format(schmName, schmName, schmName))

print('Test completed')