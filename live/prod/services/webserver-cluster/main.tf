provider "aws" {
  region = "ap-southeast-2"
}

module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"

  cluster_name           = "webserver-prod"
  db_remote_state_bucket = "terraform-up-and-running-state-dthtien"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"
  instance_type          = "t3.micro"
  min_size               = 2
  max_size               = 4
  enable_autoscaling     = true

  custom_tags = {
    Owner       = "DevOps Team"
    ManagedBy   = "Terraform"
    Environment = "Production"
  }
}
