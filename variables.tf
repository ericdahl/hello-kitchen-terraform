variable "key_name" {}
variable "region" {
  default = "us-west-2"
}
variable "ami" {
  default = "ami-74871414"  // ubuntu/images/hvm-ssd/ubuntu-zesty-17.04-amd64-server-20170412.1
}
variable "instance_type" {
  default = "t2.small"
}
