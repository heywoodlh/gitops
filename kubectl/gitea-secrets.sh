#!/usr/bin/env bash

echo 'gitea admin user: '
read gitea_admin_user 

echo 'gitea admin pass: '
read gitea_admin_pass 

echo -n ${gitea_admin_user} > /tmp/gitea-admin-user.txt
echo -n ${gitea_admin_pass} > /tmp/gitea-admin-pass.txt

kubectl create secret generic gitea-admin-secret \
	--from-file=username=/tmp/gitea-admin-user.txt \
	--from-file=password=/tmp/gitea-admin-pass.txt 

rm /tmp/gitea-*.txt

