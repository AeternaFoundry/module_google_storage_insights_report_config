output "storage_insights_report_configs_id" {
  description = "Map of id values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no id are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_insights_report_configs_csv_options" {
  description = "Map of csv_options values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no csv_options are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => one(v.csv_options) if v.csv_options != null && length(v.csv_options) > 0 }
}
output "storage_insights_report_configs_deletion_policy" {
  description = "Map of deletion_policy values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_insights_report_configs_display_name" {
  description = "Map of display_name values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no display_name are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "storage_insights_report_configs_force_destroy" {
  description = "Map of force_destroy values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no force_destroy are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => v.force_destroy if v.force_destroy != null }
}
output "storage_insights_report_configs_frequency_options" {
  description = "Map of frequency_options values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no frequency_options are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => one(v.frequency_options) if v.frequency_options != null && length(v.frequency_options) > 0 }
}
output "storage_insights_report_configs_location" {
  description = "Map of location values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no location are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "storage_insights_report_configs_name" {
  description = "Map of name values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no name are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_insights_report_configs_object_metadata_report_options" {
  description = "Map of object_metadata_report_options values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no object_metadata_report_options are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => one(v.object_metadata_report_options) if v.object_metadata_report_options != null && length(v.object_metadata_report_options) > 0 }
}
output "storage_insights_report_configs_parquet_options" {
  description = "Map of parquet_options values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no parquet_options are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => one(v.parquet_options) if v.parquet_options != null && length(v.parquet_options) > 0 }
}
output "storage_insights_report_configs_project" {
  description = "Map of project values across all storage_insights_report_configs, keyed the same as var.storage_insights_report_configs except keys with no project are omitted"
  value       = { for k, v in google_storage_insights_report_config.storage_insights_report_configs : k => v.project if v.project != null && length(v.project) > 0 }
}

