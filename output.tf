output "instances" {
  value       = "${aws_instance.nginx_server.*.private_ip}"
  description = "PrivateIP address details"
}