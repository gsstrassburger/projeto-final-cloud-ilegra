terraform {
  provider "aws" {
  region = us-east-1
}

resource "aws_key_pair" "key_terraform_proj_final" {
  key_name   =
  public_key = 
}

resource "aws_security_group" "allow" {
  ingress = {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress = {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }
}

resource "aws_instance" "name" {
  ami           =
  instance_type = 
  key_name      =
  count         =
  tags {
    name = "name"
    }
    security_groups = ["${aws_security_group.allow.name}"]
    }   
}


