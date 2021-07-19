# Terraform module which creates IAM Role and IAM Policy resources on AWS.


resource "aws_iam_role" "role" {
  count = var.enabled ? 1 : 0
  name               = var.name
  assume_role_policy = var.assume_role_policy
 

  path        = var.path
  description = var.description

  max_session_duration  = var.max_session_duration
  force_detach_policies = var.force_detach_policies
  tags                        = var.tags
}

resource "aws_iam_policy" "role" {
  count = var.enabled ? 1 : 0
  name   = var.name
  policy = var.policy
 

  path        = var.path
  description = var.description
}

resource "aws_iam_role_policy_attachment" "role" {
  count = var.enabled ? 1 : 0
  role       = join("", aws_iam_role.role.*.name)
  policy_arn = join("", aws_iam_policy.role.*.arn)
}