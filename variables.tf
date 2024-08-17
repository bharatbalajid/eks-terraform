
# =====================
# VARIABLES
# =====================
variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
}

variable "node_group_name" {
  description = "Name of the EKS Node Group"
  type        = string
}

variable "instance_types" {
  description = "Instance types for the worker nodes"
  type        = list(string)
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "disk_size" {
  description = "Disk size for worker nodes (in GB)"
  type        = number
}
variable "ami_type" {
  description = "AMI TYPE"
  type        = string
}
variable "key" {
  type        = string
}
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}
variable "eks_version" {
  type    = string
}