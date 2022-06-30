terraform {
  required_providers {
    google = {
      version = "4.15.0"
      source  = "hashicorp/google"
    }

  }
}

provider "google" {
  project     = "fresh-span-354807"
  region      = "us-central"
  zone        = "us-central1-a"
  credentials = "fresh-span-354807-37059affb474.json"
}
