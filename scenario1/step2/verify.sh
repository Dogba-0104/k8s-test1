#!/bin/bash

if [ $(k get pod nginx -o jsonpath='{.status.phase}') = 'Running' ]
then
   echo 'PASSED'
fi 
