# Azure Front Door Terraform Configuration
This repository contains Terraform configuration files for setting up an Azure Front Door profile along with associated resources.

### Notes about Azure Front Door

This repository creates the following resources for Azure Front Door:

1. Azure Front Door resources
2. Azure WAF Policies and rules associated with the Front Door
3. DNS zone and required resources for the custom domain creation for the endpoint.

## Getting Started

To get started with this Terraform workspace, follow the steps below:

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An Azure account with the necessary permissions to create resources.

### Installation

1. **Clone the repository:**

  ```sh
  git clone <repository-url>
  cd <repository-directory>
  ```

2. **Initialize the Terraform workspace:**

  ```sh
  terraform init
  ```

### Usage

1. **Plan the infrastructure changes:**

  ```sh
  terraform plan
  ```

2. **Apply the infrastructure changes:**

  ```sh
  terraform apply
  ```

3. **Destroy the infrastructure (if needed):**

  ```sh
  terraform destroy
  ```



