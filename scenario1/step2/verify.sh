#!/bin/bash

if [ $(k get pod nginx -o jsonpath='{.status.phase}') = 'Running' ]
then
   echo 'PASSED'
else
   exit 1
fi 
