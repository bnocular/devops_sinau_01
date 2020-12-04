provider "aws" {
    region = "us-east-1"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "devops_01_jenkins" {
    ami = "ami-00ddb0e5626798373"
    instance_type = "t2.micro"
    key_name = "devops_sinau"

    tags = {
        Name = "${var.name}"
    }
}