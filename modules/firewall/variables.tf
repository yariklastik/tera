variable "fire_name" {
  description = "name for firewall"
  type        = string
  default     = "test"
}
variable "allow_ports" {
  description = "list of ports to open for server"
  type        = list(any)
  default     = ["80", "443", "22", "8000"]
}
variable "range" {
  description = "accept ip"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}
