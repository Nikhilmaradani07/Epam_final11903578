provider "aws" {
  region     = "ap-northeast-1"
}

resource "aws_instance" "dockervm" {
  ami           = "ami-0d0c6a887ce442603"
  instance_type = "t2.micro"
}

resource "aws_ecr_repository" "webapp" {
  name                 = "webapp"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

data "aws_availability_zones" "available_zones" {
  state = "available"
}


