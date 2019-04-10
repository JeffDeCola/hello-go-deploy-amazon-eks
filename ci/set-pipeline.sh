#!/bin/bash
# hello-go-deploy-aws-elastic-beanstalk set-pipeline.sh

fly -t ci set-pipeline -p hello-go-deploy-aws-elastic-beanstalk -c pipeline.yml --load-vars-from ../../../../../.credentials.yml
