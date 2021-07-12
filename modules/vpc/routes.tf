resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Main"
  }
  depends_on = [
    aws_vpc.main
  ]
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.ngw.id

  depends_on = [
    aws_route_table.main
  ]
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.main.id
}