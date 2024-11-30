output "cluster_id" {
  value = aws_eks_cluster.Pritam.id
}

output "node_group_id" {
  value = aws_eks_node_group.Pritam.id
}

output "vpc_id" {
  value = aws_vpc.Pritam_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.Pritam_subnet[*].id
}
