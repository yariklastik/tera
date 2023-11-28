variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}
variable "project_id" {
  description = "project id"
  type        = string
  default     = "speedy-filament-405313"

}
variable "region" {
  description = "region"
  type        = string
  default     = "us-central1"

}
