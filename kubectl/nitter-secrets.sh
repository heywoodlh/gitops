#!/usr/bin/env bash

echo -n ${RANDOM} > /tmp/nitter-redis-pass.txt

kubectl create secret generic nitter-secrets \
	--from-file=redis_password=/tmp/nitter-redis-pass.txt

rm /tmp/nitter*.txt
