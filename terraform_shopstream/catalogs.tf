resource "databricks_catalog" "catalogs" {
    for_each = {
        dev = { environment = "development", comment = "dev Environment"}
        stage = { environment = "stage", comment = "stage Environment"}
        prod = { environment = "production", comment = "prod Environment"}
    }

    name = "${each.key}_shopstream"
    comment ="${each.value.comment}"
    storage_root = var.external_storage_location

    properties = {
        environment = each.value.environment
        managed_by = "terraform"
    }
}
