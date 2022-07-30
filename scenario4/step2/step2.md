If you are still having trouble have you looked at the 
```plain
[docs](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-a-liveness-command)


You may need to create a new pod but you'll need the yaml first



POD=changeme
```{{copy}}
k get pod $POD -o yaml > pod.yaml
```{{exec}

vi pod.yaml
```{{exec}

Now fix it!!!

k create -f pod.yaml
```{{exec}}

k get po $POD
```{{exec}}

Once you have it running click on 
CHECK
to get the flag
