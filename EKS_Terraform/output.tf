output "vpc_id" {
  value = aws_vpc.Pritam_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.Pritam_subnet[*].id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.Pritam_igw.id
}

output "route_table_id" {
  value = aws_route_table.Pritam_route_table.id
}

output "cluster_id" {
  value = aws_eks_cluster.Pritam.id
}

output "node_group_id" {
  value = aws_eks_node_group.Pritam.id
}

output "security_group_ids" {
  value = [aws_security_group.Pritam_cluster_sg.id, aws_security_group.Pritam_node_sg.id]
}

output "eks_role_arn" {
  value = aws_iam_role.Pritam_cluster_role.arn
}

output "node_role_arn" {
  value = aws_iam_role.Pritam_node_group_role.arn
}
