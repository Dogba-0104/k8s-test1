As you can see you have an nginx pod in an error state.
The objective is to fix this pod, start by describing the pod
RUN `k describe pod nginx`
You should now have enough information to edit the nginx pod and get it into a running state.
