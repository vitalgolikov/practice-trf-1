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
