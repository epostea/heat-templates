#!/bin/bash
# Investigate the cause of the issue based on the Pod's specification and resource utilization.
kubectl describe pod <pod-name>
kubectl top pod <pod-name>