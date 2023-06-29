root@ip-172-31-44-161:~/tf# cat ec2.tf 
resource "aws_instance" "app_server" {
  ami           = "ami-08f6b93d7eb04be1a"
  instance_type = "t2.micro"
root@ip-172-31-44-161:~/tf# cat providers.tf 
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA3RDGHTJIQZJWTUMD"
  secret_key = "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"
}
root@ip-172-31-44-161:~/tf# 
