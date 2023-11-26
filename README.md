# terraform-aws-assume-role
Terraform module which creates IAM Role  and IAM Policy resources on AWS



-->

Terraform module to provision AWS [`IAM Assume Role`]



## Introduction

The module will create:

* IAM assumes role



## Usage


```hcl

#
#

module "iam" {
   source                                    = "git::https://git@github.com/ucopacme/terraform-aws-assume-role.git?ref=v0.0.2"
  name                                      = "role_name"
  assume_role_policy                        = data.aws_iam_policy_document.this.json
  policy_jsons                              = ["${data.aws_iam_policy_document.example.json}"]
  policy_arns = [
    "arn:aws:iam::aws:policy/service-role/AmazonRDSDirectoryServiceAccess"
  ]
  tags = {
    "ucop:application" = "xxx"
    "ucop:createdBy"   = "terraform"
    "ucop:environment" = "xxx"
    "ucop:group"       = "xxx"
    "ucop:source"      = "xxx"
    "Name"             = "xxx"
    "ucop:owner"       = "xxx"
  }
}

