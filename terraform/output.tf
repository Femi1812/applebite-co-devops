output "cluster_id" {
  description = "EKS cluster ID"
  value       = aws_eks_cluster.demo.id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.demo.endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = aws_eks_cluster.demo.name
}

output "region" {
  description = "AWS region"
  value       = var.region
}

# output "cluster_name" {
#   description = "Kubernetes Cluster Name"
#   value       = local.cluster_name
# }
