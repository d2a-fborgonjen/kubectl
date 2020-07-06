#!/bin/sh

set -e

# Extract the base64 encoded config data and write this to the KUBECONFIG
echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config

# Authenticate gcloud
echo "$GCLOUD_SERVICE_KEY" | base64 --decode > /tmp/gcloud_service_key
gcloud auth activate-service-account --key-file=/tmp/gcloud-service-key.json

sh -c "kubectl${KUBECTL_VERSION:+.${KUBECTL_VERSION}} $*"
