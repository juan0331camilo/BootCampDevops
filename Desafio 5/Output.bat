 
 terraform apply
data.template_file.windows-userdata: Reading...
data.template_file.windows-userdata: Read complete after 0s [id=50eca9f9175b3acfb54f3db14c93d621f3b2ee9ae96545ece3cbfc991f8680eb]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbo
  + create

Terraform will perform the following actions:

  # aws_instance.windows-server will be created
  + resource "aws_instance" "windows-server" {
      + ami                                  = "ami-0fc682b2a42e57ca2"
      + arn                                  = (known after apply)    
      + associate_public_ip_address          = (known after apply)    
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "bootcampdevops-dev-windows-us-east-1"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = false
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Environment" = "dev"
          + "Name"        = "bootcampdevops-dev-windows-server"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "bootcampdevops-dev-windows-server"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "e9cefb0132d94c0e1c7c03abb530aeba5d48bfff"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + root_block_device {
          + delete_on_termination = true
          + device_name           = (known after apply)
          + encrypted             = true
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = 30
          + volume_type           = "gp2"
        }
    }

  # aws_key_pair.key_pair will be created
  + resource "aws_key_pair" "key_pair" {
      + arn             = (known after apply)
      + fingerprint     = (known after apply)
      + id              = (known after apply)
      + key_name        = "bootcampdevops-dev-windows-us-east-1"
      + key_name_prefix = (known after apply)
      + key_pair_id     = (known after apply)
      + key_type        = (known after apply)
      + public_key      = (known after apply)
      + tags_all        = (known after apply)
    }

  # aws_security_group.aws-windows-sg will be created
  + resource "aws_security_group" "aws-windows-sg" {
      + arn                    = (known after apply)
      + description            = "Allow incoming connections"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Allow incoming HTTP connections"
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Allow incoming RDP connections"
              + from_port        = 3389
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 3389
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Allow incoming SSH connections"
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
        ]
      + name                   = "bootcampdevops-dev-windows-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "bootcampdevops-dev-windows-sg"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "bootcampdevops-dev-windows-sg"
        }
      + vpc_id                 = (known after apply)
    }

  # local_file.ssh_key will be created
  + resource "local_file" "ssh_key" {
      + content              = (sensitive value)
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "bootcampdevops-dev-windows-us-east-1.pem"
      + id                   = (known after apply)
    }

  # tls_private_key.key_pair will be created
  + resource "tls_private_key" "key_pair" {
      + algorithm                     = "RSA"
      + ecdsa_curve                   = "P224"
      + id                            = (known after apply)
      + private_key_openssh           = (sensitive value)
      + private_key_pem               = (sensitive value)
      + private_key_pem_pkcs8         = (sensitive value)
      + public_key_fingerprint_md5    = (known after apply)
      + public_key_fingerprint_sha256 = (known after apply)
      + public_key_openssh            = (known after apply)
      + public_key_pem                = (known after apply)
      + rsa_bits                      = 4096
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + vm_windows_server_instance_id         = (known after apply)
  + vm_windows_server_instance_name       = "winsrv01"
  + vm_windows_server_instance_public_dns = (known after apply)
  + vm_windows_server_instance_public_ip  = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes
tls_private_key.key_pair: Creating...
aws_security_group.aws-windows-sg: Creating...
tls_private_key.key_pair: Creation complete after 2s [id=48796054516547122db1ca62a705cc83405471b4]
aws_key_pair.key_pair: Creating...
aws_key_pair.key_pair: Creation complete after 1s [id=bootcampdevops-dev-windows-us-east-1]
local_file.ssh_key: Creating...
local_file.ssh_key: Creation complete after 0s [id=aa161bc05e8e4f1db856f24b2925e13fabdc5754]
aws_security_group.aws-windows-sg: Creation complete after 4s [id=sg-0627a7b659867ef1d]
aws_instance.windows-server: Creating...
aws_instance.windows-server: Still creating... [10s elapsed]
aws_instance.windows-server: Still creating... [20s elapsed]
aws_instance.windows-server: Still creating... [30s elapsed]
aws_instance.windows-server: Still creating... [40s elapsed]
aws_instance.windows-server: Creation complete after 45s [id=i-0793b4757cf53f327]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

Outputs:

