<br>
As you can see you have an nginx pod in an error state.
<br>
The objective is to fix this pod, you could start by describing the pod 
<br>
RUN `k describe pod $(k get -l app=nginx)` 
<br>
If you do not have enough informations, start looking at other resources
<br>
Once you have it running click on **CHECK** to get the flag
