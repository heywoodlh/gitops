#!/usr/bin/env bash

kubectl create secret generic obsidian-livesync-couchdb --from-literal=adminUsername=obsidian --from-literal=adminPassword=$(pass obsidian.kube/obsidian) --from-literal=cookieAuthSecret=yieChahcheizonaethohV3
