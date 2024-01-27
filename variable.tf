variable "region" {
  description = "Region to deploy the project"
  default = "us-east-1"
}

variable "ami" {
  description = "Ubuntu image to deploy the project"
  default = "ami-04ab94c703fb30101"
}

variable "server_name" {
  description = "Server Name on tag"
  default     = "My Nginx Server"
}