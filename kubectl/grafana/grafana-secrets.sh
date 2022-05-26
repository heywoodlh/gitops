#!/usr/bin/env bash

grafana_user='heywoodlh'
grafana_pass="$(pass grafana.kube/heywoodlh)"

echo -n ${grafana_user} > /tmp/grafana-user.txt
echo -n ${grafana_pass} > /tmp/grafana-pass.txt

kubectl create secret generic grafana-secrets \
	--from-file=admin-user=/tmp/grafana-user.txt \
	--from-file=admin-password=/tmp/grafana-pass.txt 

rm /tmp/grafana-*.txt

