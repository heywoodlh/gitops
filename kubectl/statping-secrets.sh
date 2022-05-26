#!/usr/bin/env bash

echo 'Statping password: '
read statping_pass

echo -n ${statping_pass} > /tmp/statping-pass.txt

kubectl create secret generic statping-secrets \
	--from-file=statping_password=/tmp/statping-pass.txt

rm /tmp/statping*.txt
