#!/bin/bash
gcloud beta filestore instances create nfs --location=eu-west1-b --tier=STANDARD \
  --file-share=name="vol1",capacity=1TB \
  --network=name="default",reserved-ip-range="10.0.0.0/29"
gcloud beta filestore instances list --> NOTE IP
helm repo add rimusz https://helm-charts.rimusz.net
helm repo up
helm install --name nfs-eu-west1-b rimusz/nfs-client-provisioner --namespace nfs-storage \
  --set nfs.server="IP-HERE" --dry-run --debug