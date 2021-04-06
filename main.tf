
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {

  count = var.instancecount

  ami           = var.amiid
  instance_type = "t2.micro"
  tags = {
    "Name" = "Imran-instance-${count.index + 1}"
  }

}

output "myec2instanceipaddress" {

  value = aws_instance.myec2[*].public_ip

}


output "myec2instanceprivateipaddress" {

  value = aws_instance.myec2[*].private_ip

}