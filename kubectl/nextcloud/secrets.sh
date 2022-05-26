#!/usr/bin/env bash

kubectl create secret generic nextcloud-secrets --from-literal=username=heywoodlh --from-literal=password=$(pass nextcloud.kube/heywoodlh)
