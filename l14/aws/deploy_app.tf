provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "vm1" {
  ami = "ami-0e1ce3e0deb8896d2"
  instance_type = "t2.micro"
  key_name      = "test"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              apt install default-jdk -y
              apt install maven -y
              cd /root
              git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
              mvn package -f /root/boxfuse-sample-java-war-hello/pom.xml
              EOF
}

resource "aws_instance" "vm2" {
  ami = "ami-0e1ce3e0deb8896d2"
  instance_type = "t2.micro"
  key_name      = "test"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              apt install default-jre -y
              apt install tomcat9 -y
              EOF
}

resource "aws_s3_bucket" "b" {
  bucket = "main.smartusdom.ru"
  acl    = "public-read"
  website {
    index_document = "index.html"
  } 
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
