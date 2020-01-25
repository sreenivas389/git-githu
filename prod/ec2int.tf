provider "aws" {
        access_key = "AKIAV2GARFLTZFIFWP76"
        secret_key = "ifGvgzltCabmru8Lrb7lIh8flNacIcpTNLpZYNtO"
        region = "us-east-1"
}

resource "aws_instance" "example" {
        ami = "ami-a59b49c6"
        instance_type = "t2.micro"
        key_name = "mytestingkey"
        security_groups= ["sample-sg"]
        tags {
         Name = "terraform-instance"
        }
}