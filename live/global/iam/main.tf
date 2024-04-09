provider "aws" {
  region = "ap-southeast-2"
}


module "users" {
  source = "../../../modules/landing-zone/iam-user"

  for_each  = toset(var.user_names)
  user_name = each.value
}

resource "aws_iam_user" "existing_user" {
  name = "dthtien_console"
}

resource "aws_iam_user" "existing_tf_user" {
  name = "tf_user"
}
