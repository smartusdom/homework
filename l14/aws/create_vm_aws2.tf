provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  count = 2
  ami = "ami-0e1ce3e0deb8896d2"
  instance_type = "t2.micro"
  key_name      = "test"
  vpc_security_group_ids = [aws_security_group.instance.id]
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
