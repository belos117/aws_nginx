output "instances" {
  value       = aws_instance.nginx_server.*.private_ip
  description = "PrivateIP address details"
}

output "public_ip" {
  description = "The public IP address assigned to the instance"
  value       = aws_instance.nginx_server.*.public_ip
}