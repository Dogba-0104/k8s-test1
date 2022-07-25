<br>
As you can see you have an mysql pod in a bad state.
<br>
The objective is to fix this pod, good start would be describing the pod
<br>
```plain

k describe pod mysql
```{{exec}}

Maybe next try looking at the logs
```plain
k logs mysql
```{{exec}}

Now fix it!!!

Once you have it running click on 
CHECK
to get the flag
