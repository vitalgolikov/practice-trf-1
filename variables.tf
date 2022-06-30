variable "instance_type" {
  type        = string
  default     = "f1-micro"
  description = "type of instance virtual machine"

}

variable "instance_name" {
  type        = string
  default     = "vm-holikov"
  description = "VM name"
}

variable "bucket_name" {
  type        = string
  default     = "hillel-18-holikov"
  description = "bucket name"
}

variable "image" {
  type = string
  description = "OS Image"
  default = "debian-cloud/debian-9"
}

variable "network" {
  type = string
  description = "network name"
  default = "my_network"
}

variable "tag" {
  type = string
  description = "tag for firewall"
  default = "web"
}

variable "execute" {
  type = string
  description = "startup script path"
  default = "${path.module}/pkginstall.sh"
}

variable "bucket_location" {
  type = string
  description = "location of bucket"
  default = "EU"
}

variable "bucket_force_destroy" {
  type = bool
  description = "force destroy bucket"
  default = true
}

variable "bucket_level_access" {
  type = bool
  description = "level_access"
  default = true
}