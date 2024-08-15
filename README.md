```
# Terraform AWS EKS Cluster Deployment

This repository contains Terraform configurations for deploying and managing a fully functional Amazon EKS (Elastic Kubernetes Service) cluster. The setup includes the necessary AWS IAM roles, policies, security groups, and VPC configurations, along with integration for various AWS services essential for running a production-grade Kubernetes cluster.

## Features

- **EKS Cluster Creation**: Automates the provisioning of an EKS cluster, including the setup of control planes and worker nodes.
- **VPC Configuration**: Configures a VPC with public and private subnets for secure and scalable networking.
- **IAM Role Management**: Includes detailed IAM policies and roles, allowing EKS to interact with other AWS services securely.
- **Load Balancer Integration**: Configures AWS Load Balancer Controller with the necessary IAM policies to manage Elastic Load Balancers.
- **Addon Policies**: Predefined policies for integrating with AWS services.
- **OIDC Integration**: Supports OpenID Connect (OIDC) for Kubernetes service accounts, allowing secure access to AWS services from within the cluster.
- **Modular Design**: The Terraform code is modular, allowing easy customization and reuse of components.

## Getting Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/bharatbalajid/eks-terraform.git
   cd terraform-aws-eks-cluster
   ```

2. **Update Variables**: Customize the `terraform.tfvars` file with your AWS region, VPC settings, and other necessary parameters.

3. **Initialize Terraform**:
   ```bash
   terraform init
   ```

4. **Deploy the Infrastructure**:
   ```bash
   terraform apply
   ```

5. **Access Your Cluster**: After deployment, your kubeconfig file will be automatically updated for easy access to the Kubernetes cluster.

## Prerequisites

- Terraform >= 0.12
- AWS CLI
- kubectl
- AWS IAM permissions for deploying EKS resources
```
