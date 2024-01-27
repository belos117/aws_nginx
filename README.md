## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.34.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.34.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.nginx_server](https://registry.terraform.io/providers/hashicorp/aws/5.34.0/docs/resources/instance) | resource |
| [aws_security_group.allow_tls](https://registry.terraform.io/providers/hashicorp/aws/5.34.0/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | Ubuntu image to deploy the project | `string` | `"ami-073ff6027d02b1312"` | no |
| <a name="input_ingress_rule"></a> [ingress\_rule](#input\_ingress\_rule) | TLS from VPC | `list(any)` | <pre>[<br>  {<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "from_port": 443,<br>    "protocol": "tcp",<br>    "to_port": 443<br>  },<br>  {<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "from_port": 80,<br>    "protocol": "tcp",<br>    "to_port": 80<br>  }<br>]</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type to deploy the project | `string` | `"t2.micro"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region to deploy the project | `string` | `"us-west-2"` | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Allow TLS inbound traffic | `string` | `"allow_tls"` | no |
| <a name="input_security_group_tag"></a> [security\_group\_tag](#input\_security\_group\_tag) | Security Group Tag | `string` | `"manual"` | no |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | Server Name on tag | `string` | `"My Nginx Server"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instances"></a> [instances](#output\_instances) | PrivateIP address details |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws\_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached |
