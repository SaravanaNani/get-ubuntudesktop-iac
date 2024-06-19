variable "project_id" {
description = "custom-svc"
type = string
default = "saravana95"
}

variable "roles" {
  default = [
    "roles/compute.networkAdmin",
    "roles/compute.securityAdmin",
    "roles/iam.serviceAccountUser",
    "roles/compute.instanceAdmin.v1",
    "roles/storage.admin"
  ]
}
