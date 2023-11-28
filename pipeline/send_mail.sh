#!/usr/bin/env bash

set -e

cat pipeline/mail_data.tpl.json | envsubst > mail_data.json

curl -s \
  -X POST \
  --user "$MAILJET_KEY:$MAILJET_SECRET" \
  https://api.mailjet.com/v3.1/send \
  -H 'Content-Type: application/json' \
  -d '@./mail_data.json'

rm mail_data.json
