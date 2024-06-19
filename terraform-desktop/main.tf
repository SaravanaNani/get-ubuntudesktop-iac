provider "google" {
  project     = "saravana95"
}

terraform {
  backend "gcs" {
    bucket  = "saravana-desk-state-backup-bucket"
    prefix  = "terraform-desktop/state"
  }
}

module "desktop-server" {
source = "/var/lib/jenkins/workspace/desktop/terraform-desktop/modules/desktop-server"
}
