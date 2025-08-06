#!/bin/bash

echo "Deploying Application"

echo "Update Kubeconfig"

aws eks update-kubeconfig --region ap-south-1 --name mini1-cluster

cd /home/ec2-user/app/

echo "Running kubectl apply..."
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
