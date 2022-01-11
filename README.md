# Create the scratch org
```
sfdx force:org:create --setdefaultusername -f config\project-scratch-def.json
sfdx force:source:push
sfdx force:apex:execute -f scripts\apex\setRole.apex
```

#Run the unit tests
```
sfdx force:apex:test:run -w 50
```

