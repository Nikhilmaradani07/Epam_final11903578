provider "aws" {
  region     = "ap-northeast-1"
  access_key = "AKIA5TTUIH2YGHV6DH4B"
  secret_key = "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"
}

resource "aws_instance" "dockervm" {
  ami           = "ami-0d0c6a887ce442603"
  instance_type = "t2.medium"
}

resource "aws_ecr_repository" "nikhilecr" {
  name                 = "nikhilecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

data "aws_availability_zones" "available_zones" {
  state = "available"
}


