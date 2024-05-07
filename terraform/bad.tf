# Bad Terraform script with poor conventions
provider "aws" {
  region = "us-west-2"
  profile = "jack.roper"
}

variable "configuration" {
  description = "EC2 configuration"
  default = [{}]
}

locals {
  serverconfig = [
    for srv in var.configuration : [
      for i in range(1, srv.no_of_instances + 1) : {
        name = "my-instance-${i}"
        instance_type = srv.instance_type
        ami = srv.ami
      }
    ]
  ]
}

resource "aws_instance" "my_instances" {
  count = length(local.serverconfig)
  ami = local.serverconfig[count.index].ami
  instance_type = local.serverconfig[count.index].instance_type
  key_name = "my-keypair"
  tags = {
    Name = local.serverconfig[count.index].name
  }
}
