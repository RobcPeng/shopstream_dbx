variable "project_name" {
  type    = string
  default = "shopstream"
}

variable "environment" {
  description = "dev, stage, prod"
  type        = string
  default     = "dev"
}

locals {
  env_config = {
    dev = {
      databricks_host    = "https://dbc-9bb4ffe7-f810.cloud.databricks.com"
      databricks_profile = "dev"
      external_storage   = "s3://amzn-databricks-pro-storage-west/"
    }
    stage = {
      databricks_host    = "https://dbc-f6c570d2-5aca.cloud.databricks.com"
      databricks_profile = "stage"
      external_storage   = "s3://amzn-databricks-pro-storage-west/"
    }
    prod = {
      databricks_host    = "https://dbc-f6c570d2-5aca.cloud.databricks.com"
      databricks_profile = "prod"
      external_storage   = "s3://amzn-databricks-pro-storage-west/"
    }
  }
  current_env = local.env_config[var.environment]
}