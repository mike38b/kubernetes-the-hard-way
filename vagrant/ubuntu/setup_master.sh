#!/bin/bash

set -eux
HOSTNAME=$1
# download and install kubectl
if HOSTNAME = master; then
  cd /tmp
  for i in kube-apiserver kube-controller-manager kube-scheduler kubectl; do
    curl -LO "https://dl.k8s.io/v1.24.8/bin/linux/arm64/${i}"
  done
  chmod +x kube-apiserver kube-controller-manager kube-scheduler kubectl 
  sudo mv kube-apiserver kube-controller-manager kube-scheduler kubectl /usr/local/bin/
