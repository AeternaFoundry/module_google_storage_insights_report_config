variable "storage_insights_report_configs" {
  description = <<EOT
Map of storage_insights_report_configs, attributes below
Required:
    - location
Optional:
    - deletion_policy
    - display_name
    - force_destroy
    - project
    - csv_options (block):
        - delimiter (optional)
        - header_required (optional)
        - record_separator (optional)
    - frequency_options (block):
        - end_date (required, block):
            - day (required)
            - month (required)
            - year (required)
        - frequency (required)
        - start_date (required, block):
            - day (required)
            - month (required)
            - year (required)
    - object_metadata_report_options (block):
        - metadata_fields (required)
        - storage_destination_options (required, block):
            - bucket (required)
            - destination_path (optional)
        - storage_filters (optional, block):
            - bucket (optional)
    - parquet_options (block):
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    deletion_policy = optional(string)
    display_name    = optional(string)
    force_destroy   = optional(bool)
    project         = optional(string)
    csv_options = optional(object({
      delimiter        = optional(string)
      header_required  = optional(bool)
      record_separator = optional(string)
    }))
    frequency_options = optional(object({
      end_date = object({
        day   = number
        month = number
        year  = number
      })
      frequency = string
      start_date = object({
        day   = number
        month = number
        year  = number
      })
    }))
    object_metadata_report_options = optional(object({
      metadata_fields = list(string)
      storage_destination_options = object({
        bucket           = string
        destination_path = optional(string)
      })
      storage_filters = optional(object({
        bucket = optional(string)
      }))
    }))
    parquet_options = optional(object({
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

