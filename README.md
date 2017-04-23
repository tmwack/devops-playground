# devops-playground

A collection of artifacts, deployment scripts, and other pieces of code used for playing with devops tools and processes. A lot of devops-y things want a git repository -- so this is useful in that sense as well. 

## /node-sample

An naive express.js app, used as a deployment artifact.

## beanstalk-template

A collection of AWS CLI JSON templates for creating Elastic Beanstalk infrastructure.

## /terraform

Terraform scripts defining node.js deployments

## rakefile.rb

Tasks for deployment:
- Pack beanstalk artifact
- Upload beanstalk artifact to S3
- Apply terraform scripts