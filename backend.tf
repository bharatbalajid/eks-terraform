terraform {
  backend "s3" {
    bucket  = "my-terraform-state-bucket-mac"
    key     = "eks-cluster/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
