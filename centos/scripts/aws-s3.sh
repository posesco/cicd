#!/bin/bash
# Variables las numeradas se reciben como parametro
DATE=$(date +%H-%M-%S)
BACKUP=db-$DATE.sql
DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_KEYID=$4
AWS_SECRET=$5
BUCKET_NAME=$6
# Ejecucion del dump
mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/respaldos/$BACKUP && \
export AWS_ACCESS_KEY_ID=$AWS_KEYID && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
echo "Subiendo tu $BACKUP hacia amazon ..." && \
# Copiando a aws
aws s3 cp /tmp/respaldos/$BACKUP s3://$BUCKET_NAME/db/$BACKUP