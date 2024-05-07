# Improved Terraform script
provider "aws" {
  region  = "us-west-2"
  profile = "jack.roper"
}

variable "configuration" {
  description = "EC2 configuration"
  default     = []
}

locals {
  serverconfig = [
    for srv in var.configuration : {
      name          = "my-instance-${srv.index + 1}"
      instance_type = srv.instance_type
      ami           = srv.ami
    }
  ]
}

resource "aws_instance" "my_instances" {
  count         = length(local.serverconfig)
  ami           = local.serverconfig[count.index].ami
  instance_type = local.serverconfig[count.index].instance_type
  key_name      = "my-keypair"
  tags = {
    Name = local.serverconfig[count.index].name
  }
  # Intentional error: Missing security group configuration
}
