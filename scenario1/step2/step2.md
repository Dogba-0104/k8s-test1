<br>
As you can see you have an nginx pod in an error state.<br>
The objective is to fix this pod, start by describing the pod <br>
```plain
k describe pod nginx
```{{exec}}
You should now have enough information to edit the nginx pod and get it into a running state.<br>
Once you have it running click on CHECK to get the flag
