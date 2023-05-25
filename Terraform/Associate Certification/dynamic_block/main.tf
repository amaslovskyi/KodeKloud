resource "aws_security_group" "backend_sg" {
  name   = "backend-sg"
  vpc_id = aws_vpc.backend-vpc.id
  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports
    content {
      from_port  = port.value
      to_port    = port.value
      protocol   = "tcp"
      cidr_block = ["0.0.0.0/0"]
    }
  }
}
