# Building the docker image
Specify the kubectl and aws cli version you want installed if you want to make your own image. This way you can customize and update to your needs.  Otherwise you can use the docker hub image.
Example: 
`docker build ./docker/ --build-arg KUBECTL_VERSION=1.23.5 --build-arg AWSCLI_VERSION=2.5.6`

# Setup

Helm package deploy

~~You need to set your credentials in the aws-secrets.yml. Also you need to set your AWS_ACCOUNT, AWS_REGION and NAMESPACES in ecr-cron.yml.
Afterwords run:

	deploy-aws_ecr_helper.sh <mode> -n <namespace>

Afterwords you should be able to see the cron job with:

	kubectl get cronjobs -n infrastructure~~

# Thanks

This is based on the work of @xynova.
This is further based on the work of @Odania-IT.