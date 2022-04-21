#!/usr/bin/env bash

#Arguments
# create or delete
MODE=$1

while getopts ":n" opt; do
  case $opt in
    n)
      NAMESPACE=$OPTARG
      ;;
    h)
      get_help
      ;;
  esac
done

if $MODE == "delete"
then
    delete_aws-ecr-helper () {
        kubectl delete -n $NAMESPACE -f templates/aws-secrets.yml
        kubectl delete -n $NAMESPACE -f templates/aws-role.yml
        kubectl delete -n $NAMESPACE -f templates/ecr-cron.yml
    }
elif $MODE == "create"
then
    create_aws-ecr-helper () {
        kubectl create -n $NAMESPACE -f templates/aws-secrets.yml
        kubectl create -n $NAMESPACE -f templates/aws-role.yml
        kubectl create -n $NAMESPACE -f templates/ecr-cron.yml
    }
fi