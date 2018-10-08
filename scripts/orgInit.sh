#!/bin/bash

sfdx force:org:create -a dt-test -s -f config/project-scratch-def.json
sfdx force:source:push
sfdx force:user:permset:assign -n datatree
sfdx force:org:open -p /lightning/page/home
echo "Org is set up"
