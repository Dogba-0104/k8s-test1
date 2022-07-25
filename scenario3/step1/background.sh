#!/bin/bash

cat <<EOF | kubectl apply -f -                                                                                                                         0|1 х │ 4s 
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: nginx
  name: nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      nodeName: worker1
      containers:
      - image: nginx
        name: nginx
EOF


sleep 10
