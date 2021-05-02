import json

templateLines = []
paths = {}
with open('./project-paths.json','r') as jsondata:
    paths = json.load(jsondata)

with open('./xschemrc-template','r') as template:
    templateLines = template.readlines()

with open('./xschemrc','w') as newfile:
    for line in templateLines:
        newstring = None
        for val in paths.keys():
            string = 'set {}'.format(val)
            if string in line:
                newstring = '{} {}\n'.format(string, paths[val])
        if newstring != None:
            newfile.write(newstring)
        else:
            newfile.write(line)

