variable "server_port" {
  description = "The port the server will listen on"
  type        = number
  default     = 8080
}

variable "cluster_name" {
  type    = string
  default = "The name to use for all the cluster resources"
}

variable "db_remote_state_bucket" {
  type    = string
  default = "The name of the S3 bucket to store the remote state file"
}

variable "db_remote_state_key" {
  description = "The path for the DB remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "min_size" {
  description = "The minimum number of instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of instances in the ASG"
  type        = number
}

variable "custom_tags" {
  description = "A map of custom tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "enable_autoscaling" {
  description = "Enable autoscaling for the ASG"
  type        = bool
  default     = false
}
