#!/bin/bash

if [[ $(k get pod nginx -o jsonpath='{.status.phase}') == 'Running' ]]
then
   echo 'PASSED'
   exit 0
else
   exit 1
fi 
