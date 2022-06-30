 output "vm_ipv4_external" {
  value = google_compute_instance.vital-vm.network_interface.0.access_config.0.nat_ip
 }

 output "bucket_id" {
  value = google_storage_bucket.S3-bucket.id
 }

 output "bucket_url" {
  value = google_storage_bucket.S3-bucket.url
 }