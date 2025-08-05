#!/bin/bash

echo "Deploying Application"

export KUBECONFIG=/home/ec2-user/.kube/config

cd /home/ec2-user/app/

echo "Running kubectl apply..."
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
