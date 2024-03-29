#!/bin/bash


cat <<EOF | kubectl apply -f -

apiVersion: v1

kind: Pod

metadata:

  labels:

    test: liveness

  name: liveness-exec

spec:

  containers:

  - name: liveness

    image: k8s.gcr.io/busybox

    args:

    - /bin/sh

    - -c

    - touch /tmp/healthy
    livenessProbe:

      exec:

        command:

        - cat

        - /tmp/healthy

      initialDelaySeconds: 5

      periodSeconds: 5
EOF

sleep 10
