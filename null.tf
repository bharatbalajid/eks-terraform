resource "null_resource" "update_kubeconfig_and_apply_autoscaler" {
  provisioner "local-exec" {
    command = <<EOT
    aws eks update-kubeconfig --region ${var.aws_region} --name ${aws_eks_cluster.main.name} &&
    CLUSTER_NAME= ${aws_eks_cluster.main.name} &&
    kubectl apply -f /Users/bharat/bharat/lab/terraform/eks/eks-terraform/k8s_resource/cluster_autoscaler.yaml
    EOT
  }

  depends_on = [aws_eks_cluster.main]
}