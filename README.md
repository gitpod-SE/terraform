# Terraform AWS VPC Demo with Gitpod

This repository demonstrates Terraform capabilities for AWS infrastructure provisioning using Gitpod Flex. It showcases how to create a complete AWS VPC with public and private subnets, Internet Gateway, NAT Gateways, route tables, and security groups.

## 🚀 Features

- **Complete VPC Infrastructure**: Creates a VPC with public and private subnets across multiple availability zones
- **Internet Gateway**: Provides internet access for public subnets
- **NAT Gateways**: Enables outbound internet access for private subnets (optional)
- **Route Tables**: Configures proper routing for all subnets
- **Security Groups**: Implements best practices for web and database tiers
- **Gitpod Integration**: Pre-configured development environment with all necessary tools
- **Automations**: Ready-to-use tasks for the complete Terraform workflow

## ⚠️ Cost Warning

This demo creates real AWS resources that may incur costs, particularly:

- **NAT Gateways**: ~$32/month per gateway
- **Elastic IPs**: Free when attached to running instances, ~$3/month when not in use

Always run `terraform destroy` when you're done to avoid unnecessary charges.

## 🔧 Prerequisites

1. An AWS account
2. AWS Access Key ID and Secret Access Key with appropriate permissions
3. Gitpod account (free tier available)

## 🔐 Setting Up AWS Credentials in Gitpod Flex

To securely use AWS credentials in Gitpod Flex, the recommended approach is to use file-type secrets:

### Recommended: Using File-Type Secrets (Most Secure)

1. In your Gitpod Flex project settings, navigate to the "Secrets" section
2. Create two new file-type secrets:

#### For AWS Credentials File:
- **Name**: `AWS_CREDENTIALS_FILE`
- **Mount Path**: `~/.aws/credentials`
- **Content**:
```
[default]
aws_access_key_id = YOUR_ACCESS_KEY_ID
aws_secret_access_key = YOUR_SECRET_ACCESS_KEY
```

#### For AWS Config File:
- **Name**: `AWS_CONFIG_FILE`
- **Mount Path**: `~/.aws/config`
- **Content**:
```
[default]
region = us-east-1
output = json
```

### Alternative: Using Environment Variables

If you prefer using environment variables:

1. In your Gitpod Flex project settings, navigate to "Environment Variables"
2. Add the following variables:
   - `AWS_ACCESS_KEY_ID`: Your AWS Access Key ID
   - `AWS_SECRET_ACCESS_KEY`: Your AWS Secret Access Key
   - `AWS_REGION`: Your preferred AWS region (optional, defaults to us-east-1)

These credentials will be securely stored and automatically loaded in your Gitpod workspace.

## 🚀 Getting Started

### Option 1: Open in Gitpod

Click the button below to open this repository in Gitpod:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/yourusername/terraform-aws-vpc-demo)

### Option 2: Clone and Open Manually

1. Clone this repository
2. Open it in Gitpod: https://gitpod.io/#https://github.com/yourusername/terraform-aws-vpc-demo

## 🛠️ Using the Demo

Once your Gitpod workspace is ready, you can use the following automations:

1. **Setup AWS Credentials**: Configures AWS credentials from environment variables
2. **Verify AWS Authentication**: Confirms your AWS credentials are working correctly
3. **Terraform Init**: Initializes the Terraform configuration
4. **Terraform Validate**: Validates the Terraform configuration
5. **Terraform Plan**: Creates an execution plan
6. **Terraform Apply**: Creates the resources in AWS
7. **Terraform Destroy**: Removes all created resources
8. **Full Cleanup**: Ensures all resources are destroyed and cleans local state

## 📋 Terraform Workflow

Follow this workflow to demonstrate Terraform capabilities:

1. Run "Setup AWS Credentials" automation
2. Run "Verify AWS Authentication" to confirm credentials work
3. Run "Terraform Init" to initialize the configuration
4. Run "Terraform Validate" to check for errors
5. Run "Terraform Plan" to see what will be created
6. Run "Terraform Apply" to create the resources
7. Explore the created resources in the AWS Console
8. Run "Terraform Destroy" to remove all resources when done

## 🔍 Verifying AWS Authentication

To verify your AWS credentials are working correctly:

1. Run the "Verify AWS Authentication" automation
2. You should see your AWS account ID and available regions
3. If you see an error, check your AWS credentials in Gitpod variables

## 🧹 Cleaning Up

To ensure all resources are properly destroyed:

1. Run the "Terraform Destroy" automation
2. Verify in the AWS Console that all resources have been removed
3. For a complete cleanup, run the "Full Cleanup" automation

## 🛠️ Customization

You can customize this demo by modifying:

- `variables.tf`: Change default values for CIDR blocks, region, etc.
- `main.tf`: Add or remove resources as needed
- Set `create_nat_gateway = false` to avoid NAT Gateway costs

## 📚 Learning Resources

- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [Gitpod Documentation](https://www.gitpod.io/docs)

## 🔒 Security Best Practices

This demo implements several security best practices:

1. **Credential Management**: Using Gitpod environment variables for AWS credentials
2. **Network Segmentation**: Separating resources into public and private subnets
3. **Least Privilege**: Security groups that allow only necessary traffic
4. **Resource Cleanup**: Automations to ensure proper resource destruction

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.
