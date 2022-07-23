#!/bin/bash

if [ $(k get pod nginx -o jsonpath='{.status.phase}') = 'Running' ]
then
   echo 'You have fixed it here is the flag adshgfahgdfluralgiewiashdgfhgfriay245602'
fi 
