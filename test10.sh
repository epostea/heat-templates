#!/bin/bash

for i in $(kubectl get pods -l app=my-app -o jsonpath='{.items[*].metadata.name}'); do
  echo "Checking $i"
  kubectl logs $i | grep "anomalous condition"
  if [ $? -eq 0 ]; then
    echo "Found anomalous condition in $i"
    exit 1
  fi
done