provider "aws" {
  region     = "ap-northeast-1"
  access_key = "AKIA5TTUIH2YHIL7R2FE"
  secret_key = "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"
}

resource "aws_instance" "dockervm" {
  ami           = "ami-0d0c6a887ce442603"
  instance_type = "t2.micro"
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


