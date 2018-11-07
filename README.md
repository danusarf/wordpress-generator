# Wordpress Generator

### Notes
THIS DOCUMENTATION WILL NOT COVER ON HOW TO SETUP GCLOUD CLI, KUBECTL, AND HELM.
Please refer to below reference:
> gcloud: https://cloud.google.com/sdk/
> kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl/
> helm: https://github.com/helm/helm/blob/master/docs/install.md

## Requirements
Helm, Kubernetes, and gcloud

## Using wordpress generator
1. Setup your gcloud, kubectl, and helm
2. Login gcloud with: 'gcloud auth login'
3. Run `sh setup.sh [cluster-name]`

## To scale the system run:
1. `sh scaleme.sh [size]`
