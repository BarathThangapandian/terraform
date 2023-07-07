resource "aws_route_table_association" "public" {
  subnet_id = "${aws_subnet.subnet_public1_Lab1.id}"  
  route_table_id = "${aws_route_table.r.id}"
}
