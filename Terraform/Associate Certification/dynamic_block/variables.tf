variable "ingress_ports" {
  type    = list(any)
  default = [22, 8080]
}

output "to_ports" {
  value = aws_security_group.backend_sg.ingress[*].to_port
}
