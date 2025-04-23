output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block of the created VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  description = "IDs of the created public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the created private subnets"
  value       = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  description = "ID of the created Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_ids" {
  description = "IDs of the created NAT Gateways (if any)"
  value       = var.create_nat_gateway ? aws_nat_gateway.main[*].id : null
}

output "web_security_group_id" {
  description = "ID of the web servers security group"
  value       = aws_security_group.web.id
}

output "db_security_group_id" {
  description = "ID of the database servers security group"
  value       = aws_security_group.db.id
}
