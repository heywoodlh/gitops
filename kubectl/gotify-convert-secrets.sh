#!/usr/bin/env bash

echo 'gotify-uri (ws://gotify-url:8000): '
read gotify_uri

echo 'gotify-token: '
read gotify_token

echo -n ${gotify_uri} > /tmp/gotify-convert-uri.txt
echo -n ${gotify_token} > /tmp/gotify-convert-token.txt

kubectl create secret generic gotify-secrets \
	--from-file=gotify-uri=/tmp/gotify-convert-uri.txt \
	--from-file=gotify-token=/tmp/gotify-convert-token.txt

rm /tmp/gotify-convert*.txt

