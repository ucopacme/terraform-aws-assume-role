# terraform-aws-assume-role
Terraform module which creates IAM Role  and IAM Policy resources on AWS



-->

Terraform module to provision AWS [`IAM Assume Role`]



## Introduction

The module will create:

* IAM assume role 



## Usage
Create terragrunt.hcl config file and past the following configuration.

```hcl

#
# Include all settings from root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

inputs = {
  enabled               = false
  name                  = "kk-test-role"
  assume_role_policy    = local.assume_role_policy
  policy                = local.policy
  description           = "IAM rule for DataDage"
  max_session_duration  = "3600" # by default it is set to 3600 too
  force_detach_policies = false  # by default it is set to false too
  tags = {
    "ucop:application" = "test"
    "ucop:createdBy"   = "terraform"
    "ucop:enviroment"  = "test"
    "ucop:group"       = "test"
    "ucop:source"      = local.source
  }
}

locals {
  policy             = jsondecode(file("./policy.json"))
  assume_role_policy = jsondecode(file("./assume_policy.json"))
  source             = join("/", ["https://github.com/ucopacme/ucop-terraform-config/tree/master/terraform/its-chs-dev/us-west-2", path_relative_to_include()])
}

terraform {
  source = "git::https://git@github.com/ucopacme/terraform-aws-assume-role.git?ref=v0.0.1"
}
