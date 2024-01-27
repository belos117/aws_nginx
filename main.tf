resource "aws_instance" "nginx_server" {
  ami           = var.ami
  instance_type = "t2.micro"

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


