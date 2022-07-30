If you are still having trouble have you looked at the 

docs https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-a-liveness-command


You may need to create a new pod but you'll need the yaml first
```plain

```
POD=changeme
k get pod $POD -o yaml > pod.yaml

vi pod.yaml
```

Now fix it!!!

```
k create -f pod.yaml

k get po $POD
```

Once you have it running click on 
CHECK
to get the flag
