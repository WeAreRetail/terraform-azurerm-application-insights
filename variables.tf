# Notes:
# * there is no "retention" variable, as retention time can be set only when Application Insights is not connected to a Log Analytics workspace
# * there is no "application_type" variable, as the field is for legacy reasons and will not impact the type of App Insights resource you deploy.

variable "daily_data_cap_in_gb" {
  description = "Daily data volume cap in GB."
  type        = number
  default     = 1
}

variable "daily_data_cap_notifications_disabled" {
  description = "Whether to disable cap notifications to the subscription admin."
  type        = bool
  default     = true
}

variable "sampling_percentage" {
  description = "Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry."
  type        = number
  default     = 100
}

variable "log_analytics_workspace_resource_id" {
  description = "Specifies the id of a log analytics workspace resource."
  type        = string
}

variable "custom_location" {
  type        = string
  default     = ""
  description = "Specifies a custom location for the resource."
}

variable "custom_name" {
  type        = string
  default     = ""
  description = "Specifies a custom name for the resource."
}

variable "resource_group_name" {
  type        = string
  description = "Specifies the parent resource group name."
}

variable "custom_tags" {
  type        = map(string)
  default     = {}
  description = "The custom tags to add on the resource."
}

variable "instance_index" {
  type = number
  validation {
    condition     = var.instance_index > 0 && var.instance_index < 100
    error_message = "Must be a 2 dights number."
  }
  description = "Resource type index on the resource group."
}

variable "description" {
  type        = string
  default     = ""
  description = "The resource description."
}

variable "caf_prefixes" {
  type        = list(string)
  default     = []
  description = "Prefixes to use for caf naming."
}

variable "name_separator" {
  type        = string
  description = "Name separator"
  default     = "-"
}