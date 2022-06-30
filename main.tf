
resource "google_compute_instance" "vital-vm" {
  name         = var.instance_name
  machine_type = var.instance_type

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = file("${path.module}/pkginstall.sh")

  service_account {
    scopes = ["cloud-platform"]
  }
}

resource "google_storage_bucket" "S3-bucket" {
  name          = var.bucket_name
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true
}
