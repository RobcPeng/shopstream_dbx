resource "databricks_volume" "raw_files" {
  name             = "raw_files"
  catalog_name     = databricks_catalog.catalogs.name
  schema_name      = databricks_schema.bronze.name
  volume_type      = "MANAGED"  
  comment = "Raw file uploads - CSV, JSON, Parquet"
}

resource "databricks_volume" "ml_models" {
  name             = "ml_models"
  catalog_name     = databricks_catalog.catalogs.name
  schema_name      = databricks_schema.gold.name
  volume_type      = "MANAGED"
  
  comment = "Trained ML models and artifacts"
}