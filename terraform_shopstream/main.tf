terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "databricks" {
  profile = local.current_env.databricks_profile
  host    = local.current_env.databricks_host
}