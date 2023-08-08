variable "name" {
  type        = string
  description = "The name of the role. If omitted, Terraform will assign a random, unique name."
}

variable "assume_role_policy" {
  type        = string
  description = "The policy that grants an entity permission to assume the role."
}

variable "policy_jsons" {
  description = "Valid JSON policies for the role"
  type        = list
  default     = []
}
variable "policy_arns" {
  description = "ARNs of IAM policies for the role"
  type        = list
  default     = []
}

variable "path" {
  default     = "/"
  type        = string
  description = "Path in which to create the role and the policy."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = string
  description = "The description of the role and the policy."
}

variable "max_session_duration" {
  default     = "3600"
  type        = string
  description = "The maximum session duration (in seconds) that you want to set for the specified role."
}

variable "force_detach_policies" {
  default     = false
  type        = bool
  description = "Specifies to force detaching any policies the role has before destroying it."
}

variable "tags" {
  default     = {}
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "enabled" {
  default     = true
  description = "Set to `false` to prevent the module from creating any resources"
  type        = bool
}

variable "attach_rds_directoryservice_access_policy" {
  description = "Toggles attachment of the attach_rds_directoryservice_access_policy"
  type        = bool
  default     = false
}
