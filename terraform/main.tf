provider "google" {
  project     = "saravana95"
}

terraform {
  backend "gcs" {
    bucket  = "saravana-desk-state-backup-bucket"
    prefix  = "terraform-infra/state"
  }
}

module "jenkins-server" {
source = "/root/get-ubuntudesktop-iac/terraform/modules/jenkins-server"
}
