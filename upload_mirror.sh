#! /usr/bin/env bash

oc image mirror \
	-a ${LOCAL_SECRET_JSON} \
	--from-dir=${REMOVABLE_MEDIA_PATH}/mirror \
	"file://openshift/release:${OCP_RELEASE}*" \
	${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}

