#!/bin/bash
if [ "$HOST_ENV" == "remote" ]; then
    gsutil -q cp "gs://${LETSENCRYPT_BUCKET}/le.tar.gz" /le.tar.gz
    tar -xzf /le.tar.gz -C /
fi
