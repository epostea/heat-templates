#!/bin/bash

# Define the deployment name and desired number of replicas
deployment_name="my-deployment"
desired_replicas=5

# Scale the deployment to match the desired number of replicas
kubectl scale deployment $deployment_name --replicas=$desired_replicas