# GCP Networking Terraform Module

This repository (`gcpnetworking`) contains Terraform configuration files and modules for creating and managing Google Cloud Platform (GCP) networking resources. It provides a standardized, reusable way to provision VPC networks, subnets, and related infrastructure using Infrastructure as Code (IaC) principles.

## Contents

- **Terraform configurations** for:
  - VPC network creation
  - Subnet creation
  - Variable definitions with sensible defaults
  - Backend configuration for remote state management in Google Cloud Storage (GCS)
- **Sample `.gitignore`** optimized for Terraform and GCP credential files
- **Instructions and examples** for usage and customization

## Directory Structure

```
.
├── backend.tf          # Terraform backend configuration for GCS state
├── provider.tf         # GCP provider block
├── var.tf              # Variable definitions with defaults
├── network.tf          # VPC and subnet resource blocks
├── .gitignore          # Ignores Terraform, editor, and credential files
└── README.md           # This file
```

## Usage

1. **Clone the repository:**
    ```sh
    git clone git@github.com:bhagyashreemandara/gcpnetworking.git
    cd gcpnetworking
    ```

2. **Configure your variables:**
    - Edit `var.tf` or provide a `terraform.tfvars` file for your project, region, VPC, and subnet settings.
    - Place your GCP service account key (e.g., `service.json`) in the root directory.

3. **Initialize and apply Terraform:**
    ```sh
    export GOOGLE_APPLICATION_CREDENTIALS="$(pwd)/service.json"
    terraform init
    terraform plan
    terraform apply
    ```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- A GCP project and billing enabled
- A service account with appropriate IAM permissions (e.g., Network Admin, Storage Admin)

## Customization

- Modify variables in `var.tf` or override them using `terraform.tfvars`.
- Add additional resources (firewalls, routes, etc.) as needed in separate `.tf` files.

## Security

- Do **not** commit sensitive files such as `service.json` to version control.
- The `.gitignore` file is set up to help avoid accidental commits of secrets or state files.

## License

This project is licensed under the MIT License.

---

**Author:** [bhagyashreemandara](https://github.com/bhagyashreemandara)
