#!/bin/bash

echo "Setting things up ....."

kubectl run nginx --image=nginx:idontexist

sleep 10
