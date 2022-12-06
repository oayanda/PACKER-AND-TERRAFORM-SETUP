# --------Security/outputs.tf ------------

output "ALB-sg" {
  value = aws_security_group.oayanda["ext-alb-sg"].id
}


output "IALB-sg" {
  value = aws_security_group.oayanda["int-alb-sg"].id
}


output "bastion-sg" {
  value = aws_security_group.oayanda["bastion-sg"].id
}


output "nginx-sg" {
  value = aws_security_group.oayanda["nginx-sg"].id
}


output "web-sg" {
  value = aws_security_group.oayanda["webserver-sg"].id
}


output "datalayer-sg" {
  value = aws_security_group.oayanda["datalayer-sg"].id
}