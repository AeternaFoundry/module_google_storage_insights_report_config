resource "google_storage_insights_report_config" "storage_insights_report_configs" {
  for_each = var.storage_insights_report_configs

  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  display_name    = each.value.display_name
  force_destroy   = each.value.force_destroy
  project         = each.value.project

  dynamic "csv_options" {
    for_each = each.value.csv_options != null ? [each.value.csv_options] : []
    content {
      delimiter        = csv_options.value.delimiter
      header_required  = csv_options.value.header_required
      record_separator = csv_options.value.record_separator
    }
  }

  dynamic "frequency_options" {
    for_each = each.value.frequency_options != null ? [each.value.frequency_options] : []
    content {
      end_date {
        day   = frequency_options.value.end_date.day
        month = frequency_options.value.end_date.month
        year  = frequency_options.value.end_date.year
      }
      frequency = frequency_options.value.frequency
      start_date {
        day   = frequency_options.value.start_date.day
        month = frequency_options.value.start_date.month
        year  = frequency_options.value.start_date.year
      }
    }
  }

  dynamic "object_metadata_report_options" {
    for_each = each.value.object_metadata_report_options != null ? [each.value.object_metadata_report_options] : []
    content {
      metadata_fields = object_metadata_report_options.value.metadata_fields
      storage_destination_options {
        bucket           = object_metadata_report_options.value.storage_destination_options.bucket
        destination_path = object_metadata_report_options.value.storage_destination_options.destination_path
      }
      dynamic "storage_filters" {
        for_each = object_metadata_report_options.value.storage_filters != null ? [object_metadata_report_options.value.storage_filters] : []
        content {
          bucket = storage_filters.value.bucket
        }
      }
    }
  }

  dynamic "parquet_options" {
    for_each = each.value.parquet_options != null ? [each.value.parquet_options] : []
    content {
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

