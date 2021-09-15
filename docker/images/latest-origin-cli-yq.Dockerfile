FROM openshift/origin-cli:latest as builder

RUN wget https://github.com/mikefarah/yq/releases/download/v4.13.0/yq_linux_386.tar.gz -O - | tar xz && mv yq_linux_386 /usr/bin/yq



