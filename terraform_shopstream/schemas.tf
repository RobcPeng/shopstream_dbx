resource "databricks_schema" "bronze" {
    catalog_name = databricks_catalog.catalogs[var.databricks_profile].name
    name         = "bronze"
    comment      = "Raw data layer"
  
    properties = {
        layer = "bronze"
    }
    
}

resource "databricks_schema" "silver" {
    catalog_name = databricks_catalog.catalogs[var.databricks_profile].name
    name         = "silver"
    comment      = "Raw data layer"
  
    properties = {
        layer = "silver"
    }
    
}


resource "databricks_schema" "gold" {
    catalog_name = databricks_catalog.catalogs[var.databricks_profile].name
    name         = "gold"
    comment      = "Raw data layer"
  
    properties = {
        layer = "gold"
    }
    
}