# Building the docker image
Specify the kubectl and aws cli version you want installed. This way you can customize and update to your needs.
Example: 
`docker build . --build-arg KUBECTL_VERSION=1.23.5 --build-arg AWSCLI_VERSION=2.5.6`

# Setup

You need to set your credentials in the aws-secrets.yml. Also you need to set your AWS_ACCOUNT, AWS_REGION and NAMESPACES in ecr-cron.yml.
Afterwords run:

	aws.sh

Afterwords you should be able to see the cron job with:

	kubectl get cronjobs -n infrastructure

# Thanks

This is based on the work of @xynova.
This is further based on the work of @Odania-IT.