# Terraform AWS Demo with Gitpod

This repository demonstrates Terraform capabilities for AWS infrastructure provisioning using Gitpod Flex. It includes a practical VPC module with public and private subnets, Internet Gateway, NAT Gateways, and security groups.

## Prerequisites

- AWS account with appropriate permissions
- AWS Access Key ID and Secret Access Key

## AWS Credentials Setup in Gitpod

1. In Gitpod, set up the following environment variables:

   ```bash
   gp env AWS_ACCESS_KEY_ID=your_access_key_id
   gp env AWS_SECRET_ACCESS_KEY=your_secret_access_key
   gp env AWS_DEFAULT_REGION=us-east-1  # or your preferred region
   ```

2. Verify authentication is working by running:
   ```bash
   aws sts get-caller-identity
   ```

## Terraform Workflow

The repository includes automations for common Terraform tasks:

1. **Initialize Terraform** (runs automatically on workspace start):
   ```bash
   terraform init
   ```

2. **Validate Terraform Configuration** (runs automatically when .tf files change):
   ```bash
   terraform validate
   ```

3. **Plan Infrastructure Changes**:
   ```bash
   terraform plan
   ```

4. **Apply Infrastructure Changes**:
   ```bash
   terraform apply
   ```

5. **Destroy Infrastructure** (cleanup):
   ```bash
   terraform destroy
   ```
   
   Or use the "Terraform Cleanup" automation from the Gitpod automations panel.

## Infrastructure Components

This demo creates:

- VPC with configurable CIDR block
- Public and private subnets across two availability zones
- Internet Gateway for public subnet access
- Optional NAT Gateways for private subnet outbound traffic
- Route tables and associations
- Example security groups for web and database servers

## Cost Considerations

⚠️ **Important:** Some resources in this demo incur costs in your AWS account:

- NAT Gateways (~$0.045/hour + data processing charges)
- Elastic IPs (if not attached to running instances)

By default, NAT Gateways are disabled (`create_nat_gateway = false`). To enable them, modify the `terraform.tfvars` file or use command line variables.

## Customization

Edit the following files to customize the infrastructure:

- `variables.tf`: Adjust default values or add new variables
- `main.tf`: Modify resource configurations or add new resources
- Create a `terraform.tfvars` file to override default variable values

## Best Practices

This demo implements several best practices:

- Proper resource tagging
- Modular infrastructure design
- Secure credential management via Gitpod environment variables
- Automated cleanup to prevent lingering resources
- Separation of public and private resources
