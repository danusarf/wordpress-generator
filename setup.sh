#!/bin/bash

gcloud container clusters create $1 --region asia-southeast1-a
gcloud container clusters get-credentials $1 --region asia-southeast1-a
kubectl apply -f rbac-config.yaml
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller
sleep 20
helm install --name wp stable/wordpress
kubectl rollout status deployment wp-wordpress
export SERVICE_IP=$(kubectl get svc --namespace default wp-wordpress --template "{{ range (index .status.loadBalancer.ingress 0) }}{{.}}{{ end }}")
echo "WordPress URL: http://$SERVICE_IP/"
echo "WordPress Admin URL: http://$SERVICE_IP/admin"