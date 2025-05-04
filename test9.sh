#!/bin/bash
# This script checks if a single pod is found with errors and restarts it if so

# Get the number of pods with errors
num_error_pods=$(kubectl get pods | grep Error | wc -l)

# If there is only one pod with errors, restart it
if [ $num_error_pods -eq 1 ]; then
  pod_name=$(kubectl get pods | grep Error | awk '{print $1}')
  kubectl delete pod $pod_name
fi