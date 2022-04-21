FROM ubuntu:20.04
MAINTAINER Adam Lang <adam.lang@proscia.com>

ARG AWSCLI_VERSION
ARG KUBECTL_VERSION

RUN apt-get update && apt-get install -y curl unzip
ADD run.sh /run.sh

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl \
	&& mv kubectl /usr/local/bin \
	&& chmod +x /usr/local/bin/kubectl

RUN adduser user
USER user
WORKDIR /home/user
ENV PATH /usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/user/.local/bin

# Install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-$AWSCLI_VERSION.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
USER root
RUN ./aws/install