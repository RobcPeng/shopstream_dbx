variable "databricks_profile" {
    description = "Authentication Profile"
    type = string
    default = "dev"
}

variable "databricks_host" {
    type = string
    default = "https://dbc-5db479c3-cbc2.cloud.databricks.com/"
}

variable "environment" {
    description = "dev, stage, prod"
    type = string
    default = "dev"
} 

variable "project_name" {
    type = string
    default = "shopstream"
}


variable "external_storage_location" {
    type = string
    default = "s3://amzn-databricks-pro-storage/"

}