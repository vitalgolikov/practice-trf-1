
resource "google_compute_instance" "vital-vm" {
  name         = var.instance_name
  machine_type = var.instance_type

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = var.tag
  }

  metadata_startup_script = file(var.execute)

}

resource "google_storage_bucket" "S3-bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  force_destroy = var.bucket_force_destroy

  uniform_bucket_level_access = var.bucket_level_access
}


}