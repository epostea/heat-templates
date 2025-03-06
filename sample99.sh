#!/bin/bash
# Check the phases of the Pod resources in that namespace
kubectl get pods --all-namespaces | awk '{print $2" "$4}' | grep -E 'Pending|Unknown'