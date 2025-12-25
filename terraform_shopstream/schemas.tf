resource "databricks_schema" "bronze" {
  catalog_name = databricks_catalog.catalogs.name
  name         = "bronze"
  comment      = "Raw data layer"

  properties = {
    layer = "bronze"
  }
}

resource "databricks_schema" "silver" {
  catalog_name = databricks_catalog.catalogs.name
  name         = "silver"
  comment      = "Clean Layer"

  properties = {
    layer = "silver"
  }
}

resource "databricks_schema" "gold" {
  catalog_name = databricks_catalog.catalogs.name
  name         = "gold"
  comment      = "Aggregate Layer"

  properties = {
    layer = "gold"
  }
}