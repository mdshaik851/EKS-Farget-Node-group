output "eks_security_group_id" {
  value       = aws_security_group.eks_clustersecurity_group.id
}

output "rds_security_group_aurora_id" {
  value       = aws_security_group.rds_security_group.id 
}

output "public_subnet" {
  value = aws_subnet.public[*].id
}

output "private_subnet" {
  value = aws_subnet.private[*].id
}

