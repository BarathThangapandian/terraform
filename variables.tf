#vaiable.tf

variable "client_ip" {
 default = "10.60.60.60/32"
}


#sg.tf
resource "aws_security_group" "demo_var" {
  name        = "demo_var"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.client_ip]
 }
 ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.client_ip]
 }
 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.client_ip]
 }
}
