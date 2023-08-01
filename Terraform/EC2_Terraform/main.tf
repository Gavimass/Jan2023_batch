module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "myterraform-instance"
  ami = "ami-0a481e6d13af82399"
  instance_type          = "t2.micro"
  key_name               = "docker"
  vpc_security_group_ids = ["sg-0cf6c40f1aaaf11e6"]
  subnet_id              = "subnet-01d0f8b4a9a0a2aa0"
}
