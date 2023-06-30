root@ip-172-31-44-161:~/tf# cat ec2.tf 
resource "aws_instance" "app_server" {
  ami           = "ami-08f6b93d7eb04be1a"
  instance_type = "t2.micro"

Provider
root@ip-172-31-44-161:~/tf# cat providers.tf 
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA3RDGHTJIYGUIT6T7"
  secret_key = "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"
}
root@ip-172-31-44-161:~/tf# 


Security
resource "aws_security_group" "demo_var" {
  name        = "demo_var"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [10,20.30.40/32]
