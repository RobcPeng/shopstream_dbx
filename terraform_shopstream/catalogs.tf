resource "databricks_catalog" "catalogs" {
  name         = "${var.project_name}_${var.environment}"
  comment      = "${var.environment} Environment"
  storage_root = local.current_env.external_storage

  properties = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
