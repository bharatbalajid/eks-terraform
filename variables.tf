
# =====================
# VARIABLES
# =====================
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "eks_cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "node_group_name" {
  description = "Name of the EKS Node Group"
  type        = string
  default     = "my-node-group"
}

variable "instance_types" {
  description = "Instance types for the worker nodes"
  type        = list(string)
  default     = ["t4g.small"]
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 1
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "disk_size" {
  description = "Disk size for worker nodes (in GB)"
  type        = number
  default     = 20
}
variable "ami_type" {
  description = "AMI TYPE"
  type        = string
  default     = "AL2_ARM_64"
}
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))

  default = [
    {
      name    = "kube-proxy"
      version = "v1.30.3-eksbuild.2"
    },
    {
      name    = "vpc-cni"
      version = "v1.18.2-eksbuild.1"
    },
    {
      name    = "coredns"
      version = "v1.11.1-eksbuild.1"
    },
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.33.0-eksbuild.1"
    }
  ]
}
variable "eks_version" {
  type    = string
  default = "1.28"
}