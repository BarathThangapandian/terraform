resource "aws_instance" "testInstance1" {
  ami           = "ami-008b85aa3ff5c1b02"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.subnet_public1_Lab1.id}"
  vpc_security_group_ids = ["${aws_security_group.TerraformSG.id}"]
  key_name = "tesrt"
 tags ={
    Environment = "${var.environment_tag}"
    Name= "Redhat"
  }
}
resource "aws_instance" "testInstance2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.subnet_public1_Lab2.id}"
  vpc_security_group_ids = ["${aws_security_group.TerraformSG.id}"]
  key_name = "tesrt"
 tags ={
    Environment = "${var.environment_tag}"
    Name= "Ubuntu"
  }
}
