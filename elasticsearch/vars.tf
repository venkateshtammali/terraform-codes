variable "name" {
  description = "Elastic Search Service cluster name."
  type        = "string"
}

variable "dedicated_master" {
  default     = false
  description = "Indicates whether our cluster have dedicated master nodes enabled."
  type        = "string"
}

variable "elasticsearch_version" {
  default     = "6.7"
  description = "Elastic Search Service cluster version number."
  type        = "string"
}
variable "icount" {
  default     = 1
  description = "Elastic Search Service cluster Ec2 instance number."
  type        = "string"
}

variable "itype" {
  default     = "t2.small.elasticsearch"
  description = "Elastic Search Service cluster Ec2 instance type."
  type        = "string"
}

variable "mcount" {
  default     = 0
  description = "Elastic Search Service cluster dedicated master Ec2 instance number."
  type        = "string"
}

variable "mtype" {
  default     = ""
  description = "Elastic Search Service cluster dedicated master Ec2 instance type."
  type        = "string"
}

variable "zone_awareness" {
  default     = false
  description = "Indicates whether zone awareness is enabled."
  type        = "string"
}
variable "snapshot_start" {
  default     = 0
  description = "Elastic Search Service maintenance/snapshot start time."
  type        = "string"
}

variable "volume_size" {
  default     = "35"
  description = "Default size of the EBS volumes."
  type        = "string"
}

variable "volume_type" {
  default     = "gp2"
  description = "Default type of the EBS volumes."
  type        = "string"
}
variable "node_to_node_encryption_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable node-to-node encryption"
}
