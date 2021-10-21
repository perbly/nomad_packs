variable "cron_schedule" {
  default = "0 0 * * *"
  type = string
}

variable "job_name" {
  description = "The name to use as the job name which overrides using the pack name"
  type        = string
  // If "", the pack name will be used
  default = ""
}

variable "region" {
  description = "The region where jobs will be deployed"
  type        = string
  default     = ""
}

variable "datacenters" {
  description = "A list of datacenters in the region which are eligible for task placement"
  type        = list(string)
  default     = ["dc1"]
}

variable "count" {
  description = "The number of app instances to deploy"
  type        = number
  default     = 1
}

variable "message" {
  description = "A example message that will be displayed when service runs"
  type        = string
  default     = "A nomad cron example job"
}
variable "prohibit_overlap" {
  default = true 
}
variable "time_zone" {
  default = "UTC"
  type = string
}