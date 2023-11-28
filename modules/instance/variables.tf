variable "instance_image" {
  description = "image system"
  type        = string
  default     = "debian-cloud/debian-9"
}
variable "instance_type" {
  description = "type for instance"
  type        = string
  default     = "f1-micro"
}
variable "instance_name" {
  description = "name for instance"
  type        = string
  default     = "test-instance"
}
