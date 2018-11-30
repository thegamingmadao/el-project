variable "my_ami" {}

resource "aws_instance" "myserver" {
  ami           = "${var.my_ami}"
  instance_type = "t2.micro"
  key_name      = "server-key"
}

resource "aws_default_vpc" "default" {
}

resource "aws_default_security_group" "default" {
  vpc_id = "${aws_default_vpc.default.id}"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "server-key" {
  key_name   = "server-key"
  public_key = "${file("~/.ssh/server-key.pub")}"
}
