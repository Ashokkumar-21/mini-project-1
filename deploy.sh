#!/bin/bash
cd /home/ec2-user/app/

echo "Running kubectl apply..."
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
