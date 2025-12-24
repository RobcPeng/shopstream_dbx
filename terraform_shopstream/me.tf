data "databricks_current_user" "me" {}

output "current_user" {
  value = data.databricks_current_user.me.user_name
}