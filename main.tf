resource "aws_instance" "nginx_server" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "My Nginx Server"
  }
  user_data = <<EOF
#!/bin/bash

sudo apt update
sudo apt upgrade

#Install Nginx
sudo apt install nginx

#Configure firewall
sudo ufw allow 'Nginx HTTP'

systemctl status nginx

sudo nginx 


EOF

}
output "instances" {
  value       = "${aws_instance.nginx_server.*.private_ip}"
  description = "PrivateIP address details"
}

