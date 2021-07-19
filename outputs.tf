output "iam_role_arn" {
  value       = aws_iam_role.role.*.arn
  description = "The Amazon Resource Name (ARN) specifying the role."
}


output "iam_role_unique_id" {
  value       = aws_iam_role.role.*.unique_id
  description = "The stable and unique string identifying the role."
}

output "iam_role_name" {
  value       = aws_iam_role.role.*.name
  description = "The name of the role."
}


output "iam_policy_arn" {
  value       = aws_iam_policy.role.*.arn
  description = "The ARN assigned by AWS to this policy."
}



output "iam_policy_name" {
  value       = aws_iam_policy.role.*.name
  description = "The name of the policy."
}