resource "google_compute_instance" "desktop-server" {
  name         = "desktop-server"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "desktop-server"
      }
    }
  }

  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network    = "projects/saravana95/global/networks/custom-vpc"
    subnetwork = "projects/saravana95/regions/us-west1/subnetworks/desktop-server-subnet"

    access_config {
      // Ephemeral IP
    }
  }

  labels = {
    desktop_server = "true"
  }

  service_account {
    email  = "custom-svc@saravana95.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }

  tags = [var.name]

  metadata = {
    ssh-keys = "root:${file("/var/lib/jenkins/.ssh/id_rsa.pub")}"
  }
}

resource "google_compute_instance" "apache2" {
  name         = "apache2"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "apache2"
      }
    }
  }

  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network    = "projects/saravana95/global/networks/custom-vpc"
    subnetwork = "projects/saravana95/regions/us-west1/subnetworks/desktop-server-subnet"

    access_config {
      // Ephemeral IP
    }
  }

  labels = {
    apache2 = "true"
  }

  service_account {
    email  = "custom-svc@saravana95.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }

  tags = [var.name]

  metadata = {
    ssh-keys = "root:${file("/var/lib/jenkins/.ssh/id_rsa.pub")}"
  }
}
