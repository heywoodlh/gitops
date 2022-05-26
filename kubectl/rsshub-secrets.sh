#!/usr/bin/env bash

echo "IG username: "
read ig_username

echo "IG password: "
read ig_password

echo "YT key:"
read yt_key

echo "${ig_username}" > /tmp/rsshub-ig-username.txt
echo "${ig_password}" > /tmp/rsshub-ig-password.txt
echo "${yt_key}" > /tmp/rsshub-yt-key.txt

kubectl create secret generic rsshub-secrets \
	--from-file=ig_username=/tmp/rsshub-ig-username.txt \
	--from-file=ig_password=/tmp/rsshub-ig-password.txt \
	--from-file=yt_key=/tmp/rsshub-yt-key.txt

rm /tmp/rsshub*.txt
