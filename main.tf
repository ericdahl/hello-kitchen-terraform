provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "example" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "subnet-b691ced3"

  security_groups = ["${aws_security_group.default.id}"]
}

resource "aws_security_group" "default" {

  ingress {
    protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    protocol = "-1"
    from_port = 0
    to_port = 0


    cidr_blocks = [
      "0.0.0.0/0"]
  }
}
