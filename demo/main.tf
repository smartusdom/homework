provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "develop" {
  ami = "ami-0e1ce3e0deb8896d2"
  instance_type = "t2.micro"
  key_name      = "test"
  vpc_security_group_ids = [aws_security_group.instance.id]
  #user_data = <<-EOF
  #            #!/bin/bash
  #            sudo apt-get update
  #            sudo apt install python -y
  #            sudo apt install python-pip -y
  #            pip install boto boto3
  #            sudo apt install docker.io -y
  #            EOF
  provisioner "local-exec" {
    command = "echo ${aws_instance.develop.public_ip} >> /ansible/hosts"
  }
}

resource "aws_instance" "web" {
  ami = "ami-0e1ce3e0deb8896d2"
  instance_type = "t2.micro"
  key_name      = "test"
  vpc_security_group_ids = [aws_security_group.instance.id]
  #user_data = <<-EOF
  #            #!/bin/bash
  #            sudo apt-get update
  #            sudo apt install python -y
  #            sudo apt install python-pip -y
  #            pip install boto boto3
  #            sudo apt install docker.io -y
  #            EOF
  provisioner "local-exec" {
    command = "echo ${aws_instance.web.public_ip} >> /ansible/hosts"
  }
}

resource "aws_security_group" "instance" {
  name = "terraform-build-instance"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
