# Outputs for the Terraform AWS VPC Demo

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_ids" {
  description = "List of NAT Gateway IDs (if created)"
  value       = var.create_nat_gateway ? aws_nat_gateway.main[*].id : ["NAT Gateways not created"]
}

output "nat_gateway_eips" {
  description = "List of Elastic IP addresses for NAT Gateways (if created)"
  value       = var.create_nat_gateway ? aws_eip.nat[*].public_ip : ["NAT Gateway EIPs not created"]
}

output "web_security_group_id" {
  description = "ID of the web servers security group"
  value       = aws_security_group.web.id
}

output "db_security_group_id" {
  description = "ID of the database servers security group"
  value       = aws_security_group.db.id
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

output "private_route_table_ids" {
  description = "List of private route table IDs"
  value       = aws_route_table.private[*].id
}

output "cost_warning" {
  description = "Warning about potential costs"
  value       = var.create_nat_gateway ? "⚠️ WARNING: NAT Gateways are deployed and will incur costs (~$32/month per gateway). Run 'terraform destroy' when done." : "NAT Gateways are disabled to save costs."
}
