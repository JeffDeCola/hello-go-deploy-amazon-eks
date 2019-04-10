#!/bin/bash
# hello-go-deploy-aws-elastic-beanstalk destroy-pipeline.sh

fly -t ci destroy-pipeline --pipeline hello-go-deploy-aws-elastic-beanstalk
