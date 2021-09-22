#!/bin/bash
if [ "$HOST_ENV" == "remote" ]; then
    tar -czf /le.tar.gz /etc/letsencrypt
    gsutil -q cp /le.tar.gz "gs://${LETSENCRYPT_BUCKET}/le.tar.gz"
fi
