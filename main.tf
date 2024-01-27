resource "aws_instance" "nginx_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.server_name
  }

  user_data = <<EOF
#!/bin/bash

sudo apt update
sudo apt upgrade

#Install Nginx
sudo apt install nginx

#Configure firewall
sudo ufw allow 'Nginx HTTP'

#Check server status
systemctl status nginx

#Start Nginx server
sudo nginx 

EOF

}

resource "aws_security_group" "allow_tls" {
  name = var.security_group_name

  dynamic "ingress" {
    for_each = var.ingress_rule

    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  tags = {
    Name = var.security_group_tag
  }
}
