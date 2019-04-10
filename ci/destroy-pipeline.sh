#!/bin/bash
# hello-go-deploy-amazon-eks destroy-pipeline.sh

fly -t ci destroy-pipeline --pipeline hello-go-deploy-amazon-eks
