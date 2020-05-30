data "aws_ami" "bastion" {
  most_recent = true

  filter {
    name   = "name"
    values = ["packer-vcc-cuarentena-bastion-*"]
  }


  owners = ["self"] 
}

