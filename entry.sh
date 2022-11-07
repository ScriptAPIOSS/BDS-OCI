#!/bin/bash

if [[ ${EULA_ACCEPT^^} != TRUE ]]; then
  echo "Read https://minecraft.net/terms and accept the EULA by setting env var EULA_ACCEPT to true"
  exit 1
fi

if [[ ${PP_ACCEPT^^} != TRUE ]]; then
  echo "Read https://go.microsoft.com/fwlink/?LinkId=521839 and accept the privacy policy by setting env var PP_ACCEPT to true"
  exit 1
fi

echo "Starting server"

exec /bedrock-server/bedrock_server