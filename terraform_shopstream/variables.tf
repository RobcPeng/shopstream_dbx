variable "databricks_profile" {
    description = "Authentication Profile"
    type = string
    default = "DEFAULT"
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