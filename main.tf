provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  count = "2"

  tags = {
    Name = "Server ${count.index}"
  }
}
