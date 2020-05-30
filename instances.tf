resource "aws_instance" "bastion" {
  ami           = data.aws_ami.bastion.id
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.vpc.outputs.public_1_subnet_id
  key_name = "test-keypair-bastion"
  vpc_security_group_ids = [ aws_security_group.allow_bastion.id ]
  tags = {
    Name = "bastion"
  }
}

