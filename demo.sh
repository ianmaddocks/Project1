#!/usr/bin/env sh

set -e
terraform init
terraform plan
terraform apply -auto-approve

sleep 5
printf "\nYou should see '/version' as a reponse below:\n"
curl https://microservice2.maddocks.name/version