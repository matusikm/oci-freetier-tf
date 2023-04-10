#!/bin/bash

docker run -it --entrypoint /bin/sh -w /opt/environments/oci-freetier \
-v ${PWD}:/opt/ \
--user $(id -u):$(id -g) \
-e TF_ROOT='environments/oci-freetier' \
--name oci-freetier --rm hashicorp/terraform:1.4.4
