#!/bin/bash
# hello-go-deploy-amazon-eks set-pipeline.sh

fly -t ci set-pipeline -p hello-go-deploy-amazon-eks -c pipeline.yml --load-vars-from ../../../../../.credentials.yml
