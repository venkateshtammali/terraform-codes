# main.tf
terraform {
  required_version = "~> 0.12.0"

  backend "remote" {}
}
provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}
resource "aws_elasticsearch_domain" "es" {
  domain_name           = "${var.name}"
  elasticsearch_version = "${var.elasticsearch_version}"
cluster_config {
    instance_type            = "${var.itype}"
    instance_count           = "${var.icount}"
    dedicated_master_enabled = "${var.dedicated_master}"
    dedicated_master_type    = "${var.mtype}"
    dedicated_master_count   = "${var.mcount}"
    zone_awareness_enabled   = "${var.zone_awareness}"
  }

node_to_node_encryption {
    enabled = var.node_to_node_encryption_enabled
  }
ebs_options {
    ebs_enabled = true
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
snapshot_options {
  automated_snapshot_start_hour = "${var.snapshot_start}"
  }
tags = {
  Domain = "${var.name}"
  }
}
