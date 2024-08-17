aws_region                 = "us-east-1"
vpc_cidr_block             = "10.0.0.0/16"
public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones         = ["us-east-1a", "us-east-1b"]
eks_version                = "1.29"
eks_cluster_name           = "my-eks-cluster"
node_group_name            = "my-node-group"
ami_type                   = "AL2_ARM_64"
key                        = "my-key"
instance_types             = ["t4g.medium"]
desired_capacity           = 1
min_size                   = 1
max_size                   = 3
disk_size                  = 20
addons = [
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.33.0-eksbuild.1"
  }
]
