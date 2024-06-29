provider "aws" {
  region = "us-east-2"
  access_key = " "
  secret_key = ""
}

resource "aws_instance" "ansible_master" {
  ami           = "ami-09040d770ffe2224f" #
  instance_type = "t2.micro"
  key_name      = "newkey"

  user_data = file("userdata.sh")

  tags = {
    Name = "AnsibleMaster"
  }
}

resource "aws_instance" "ansible_slave1" {
  ami           = "ami-09040d770ffe2224f"
  instance_type = "t2.micro"
  key_name      = "newkey"

  user_data = file("userdata.sh")

  tags = {
    Name = "AnsibleSlave1"
  }
}

resource "aws_instance" "ansible_slave2" {

  ami           = "ami-09040d770ffe2224f"
instance_type = "t2.micro"
  key_name      = "newkey"

  user_data = file("userdata.sh")

  tags = {
    Name = "AnsibleSlave2"
  }
}
