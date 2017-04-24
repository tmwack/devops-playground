/*
* Variables
*/

variable "version" {
  description = "the version to cut"
}

variable "appName" {
  description = "the name of the elastic beanstalk app."
}

variable "environment" {
  description = "the environment to target"
}

variable "aws_region" {
  default = "us-east-1"
  description = "the region in which to apply."
}

/*
* Definitions
*/

provider "aws" {
  region     = "${var.aws_region}"
}

resource "aws_elastic_beanstalk_application" "app" {
  name        = "${var.appName}"
  description = "a sample elastic beanstalk application."
}

/*
*  assume bucket contains beanstalk artifacts in 'beanstalk/appName_version.zip'
*/
resource "aws_elastic_beanstalk_application_version" "app" {
  name        = "${var.version}"
  description = "application version created by terraform"
  application = "${aws_elastic_beanstalk_application.app.name}"
  bucket      = "${var.appName}"
  key         = "beanstalk/${var.appName}_${var.version}.zip"
}

resource "aws_elastic_beanstalk_environment" "app" {
    name = "${var.environment}"
    application = "${aws_elastic_beanstalk_application.app.name}"
    version_label = "${aws_elastic_beanstalk_application_version.app.name}"
    solution_stack_name = "64bit Amazon Linux 2016.09 v4.0.1 running Node.js"
}