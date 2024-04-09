variable "user_names" {
  description = "List of IAM user names"
  type        = list(string)
  default     = ["dthtien_console", "tf_user"]
}
