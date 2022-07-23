#!/bin/bash

if [[ $(k get pod nginx -o jsonpath='{.status.phase}') != 'Running' ]]
then
   exit 255
else
   exit 0
fi 
