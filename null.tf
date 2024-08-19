resource "null_resource" "update_kubeconfig_and_apply_autoscaler" {
  provisioner "local-exec" {
    command = <<EOT
    aws eks update-kubeconfig --region ${var.aws_region} --name ${aws_eks_cluster.main.name}
        EOT
  }
   provisioner "local-exec" {
    when    = destroy
    command = "rm -f ~/.kube/config"
  }
  depends_on = [aws_eks_cluster.main]
}