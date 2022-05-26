#!/usr/bin/env bash

echo 'espn plus user: '
read espn_plus_user 

echo 'espn plus pass: '
read espn_plus_pass 

echo -n ${espn_plus_user} > /tmp/espn-plus-user.txt
echo -n ${espn_plus_pass} > /tmp/espn-plus-pass.txt

kubectl create secret generic espn-plus-secrets \
	--from-file=username=/tmp/espn-plus-user.txt \
	--from-file=password=/tmp/espn-plus-pass.txt 

rm /tmp/espn-*.txt

