variable "region" {
  description = "Region to deploy the project"
  default     = "us-west-2"
}

variable "ami" {
  description = "Ubuntu image to deploy the project"
  default     = "ami-073ff6027d02b1312"
}

variable "instance_type" {
  description = "Instance type to deploy the project"
  default     = "t2.micro"
}
variable "server_name" {
  description = "Server Name on tag"
  default     = "My Nginx Server"
}

variable "security_group_name" {
  description = "Allow TLS inbound traffic"
  type        = string
  default     = "allow_tls"
}

variable "ingress_rule" {
  description = "TLS from VPC"
  type        = list(any)
  default = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "security_group_tag" {
  description = "Security Group Tag"
  type        = string
  default     = "manual"
} 