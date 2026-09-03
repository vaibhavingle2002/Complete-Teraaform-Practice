<div align="center">
  <h1>🚀 Complete Terraform Practice Repository ☁️</h1>
  <p><i>Your ultimate guide to mastering Infrastructure as Code (IaC) with Terraform and AWS!</i></p>

  <img src="https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform Badge" />
  <img src="https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white" alt="AWS Badge" />
  <img src="https://img.shields.io/badge/OpenTofu-%23FFDA18.svg?style=for-the-badge&logo=opentofu&logoColor=black" alt="OpenTofu Badge" />

</div>

---

## 📖 Overview

Welcome to the **Complete-Teraaform-Practice** repository! This comprehensive collection is designed to take you from a Terraform beginner to an advanced practitioner through daily exercises, structured scenarios, and fully-fledged real-world projects.

## 🗂️ Repository Structure

This repository is organized into distinct logical sections to facilitate step-by-step learning:

### 1. 🏗️ Core Concepts
*   **`Terraform-AWS/`**: Explores core features like `Meta-Arguments` and standard AWS provider configurations.
*   **`Terraform-Data-Source/`**: Focuses on utilizing Terraform data sources to fetch information dynamically (includes `backend.tf`, `main.tf`, `output.tf`, `provider.tf`).
*   **`Terraform-VARIABLES/`**: Deep dive into robust variable management.

### 2. 🗓️ Day-by-Day Practice (`Terraform-Practice/`)
A sequential learning path covering specific topics:
*   **Day-1 & Day-2 & Day-4**: Basics, variables, and foundational project setup.
*   **Day-3**: S3 scenarios and EC2 renaming workflows.
*   **Day-5**: Custom network configurations (`Customnet`).
*   **Day-6**: Advanced Terraform State management (`Terra_Import`, `Workspace`).
*   **Day-9**: Working extensively with Modules (`Module-Template`, `Modules-calling`, `MultiProvider`).
*   **Day-10**: Advanced resource concepts (`Diff-Acc-Resource`, `KeyCreation`, `dependencies`).
*   **Day-11**: Infrastructure provisioning (`Provisioners`, `RDS-Creation`, `TargetResources`, `UserData`).
*   **Day-14**: Advanced logic structuring (`Dynamicblock`, `Forloop`).
*   **Day-15**: Conditionals and locals (`Condition_Count`, `Input.vars`, `Local`).
*   **Opentofu/**: Examples specific to the OpenTofu fork.

### 3. 🛠️ Comprehensive Projects (`Terraform-Projects/`)
Put your skills to the test with these structured projects:
*   **`Terraform-Miniproject/`**: A solid baseline project integrating user data scripts (`userdata.sh`) and multi-file structures.
*   **`Terraform-Modules-Project/`**: Demonstrates best practices in modularization. It includes dedicated modules for `ec2-module`, `s3-bkt-module`, and `vpc`.
*   **`Terraform-RDS-MiniProject/`**: Focused entirely on scalable relational database deployments.

---

## 🌳 Full Directory Tree

<details>
<summary><b>Click to expand the full repository structure snippet</b></summary>

```text
Complete-Teraaform-Practice.git/
├── README.md
├── .gitignore
├── index.html
├── Terraform-AWS/
│   └── Meta-Arguments/
├── Terraform-Data-Source/
├── Terraform-Practice/
│   ├── Day-1/ to Day-15/
│   ├── Opentofu/
│   └── Terraform-VARIABLES/
└── Terraform-Projects/
    ├── Terraform-Miniproject/
    ├── Terraform-Modules-Project/
    │   └── modules/
    │       ├── ec2-module/
    │       ├── s3-bkt-module/
    │       └── vpc/
    └── Terraform-RDS-MiniProject/
```
</details>

---

## ⚙️ Setup & Usage

### Prerequisites
1.  [Terraform](https://developer.hashicorp.com/terraform/downloads) installed (v1.x or higher).
2.  [AWS CLI](https://aws.amazon.com/cli/) installed and configured (`aws configure`) with appropriate administrative credentials.

### Getting Started
1.  Navigate to your desired practice folder or project. For example:
    ```bash
    cd Terraform-Projects/Terraform-Modules-Project
    ```
2.  Initialize the working directory:
    ```bash
    terraform init
    ```
3.  Review the execution plan:
    ```bash
    terraform plan
    ```
4.  Apply the changes to your AWS account:
    ```bash
    terraform apply -auto-approve
    ```
5.  **Important:** Don't forget to destroy resources to avoid unexpected AWS charges!
    ```bash
    terraform destroy -auto-approve
    ```

---
<div align="center">
  <i>Happy Automating! 🚀 If you find this repository helpful, consider giving it a ⭐!</i>
</div>
