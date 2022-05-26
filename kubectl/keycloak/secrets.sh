#!/usr/bin/env bash

kubectl create secret generic keycloak-secrets --from-literal=keycloak_password=$(pass keycloak.kube/heywoodlh) --from-literal=postgres-password=$(pass keycloak.kube/postgres) --from-literal=password=$(pass keycloak.kube/postgres) --from-literal=replication-password=$(pass keycloak.kube/postgres)
