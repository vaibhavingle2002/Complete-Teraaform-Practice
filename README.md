<div align="center">
  <h1>🚀 Complete Terraform Practice Repository ☁️</h1>
  <p><i>Your ultimate guide to mastering Infrastructure as Code (IaC) with Terraform and AWS!</i></p>

  <!-- Dynamic Colorful Badges -->
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" alt="Terraform Badge" />
  <img src="https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS Badge" />
  <img src="https://img.shields.io/badge/OpenTofu-FFDA18?style=for-the-badge&logo=opentofu&logoColor=black" alt="OpenTofu Badge" />
  <img src="https://img.shields.io/badge/Infrastructure_as_Code-000000?style=for-the-badge&logo=c&logoColor=white" alt="IaC Badge" />
</div>

---

## 📖 Overview
Welcome to the **Complete-Teraaform-Practice** repository! This comprehensive collection is designed to take you from a Terraform beginner to an advanced practitioner through daily exercises, structured scenarios, and fully-fledged real-world projects.

---

## 🗂️ Repository Structure

This repository is organized into distinct logical sections to facilitate step-by-step learning:

### 1. 🏗️ Core Concepts
*   **`Terraform-AWS/`**: Explores core features like `Meta-Arguments` and standard AWS provider configurations.
*   **`Terraform-Data-Source/`**: Focuses on utilizing Terraform data sources to fetch information dynamically (includes `backend.tf`, `main.tf`, `output.tf`, `provider.tf`).
*   **`Terraform-VARIABLES/`**: Deep dive into robust variable management.

### 2. 🗓️ Day-by-Day Practice (`Terraform-Practice/`)
A sequential learning path covering specific topics:

| Stage | Focus Area | Key Concepts Covered |
| :--- | :--- | :--- |
| **Day 1, 2 & 4** | 🟢 **Foundations** | Basics, variables, and foundational project setup. |
| **Day 3** | 🪣 **Storage & Compute** | S3 scenarios and EC2 renaming workflows[cite: 2]. |
| **Day 5** | 🌐 **Networking** | Custom network configurations (`Customnet`)[cite: 2]. |
| **Day 6** | 💾 **State Management** | Advanced state handling (`Terra_Import`, `Workspace`)[cite: 2]. |
| **Day 9** | 🧩 **Modularity** | Working extensively with Modules (`Module-Template`, `Modules-calling`, `MultiProvider`)[cite: 2]. |
| **Day 10** | ⚙️ **Advanced Resources** | Complex resource concepts (`Diff-Acc-Resource`, `KeyCreation`, `dependencies`)[cite: 2]. |
| **Day 11** | 🚀 **Provisioning** | Infrastructure provisioning (`Provisioners`, `RDS-Creation`, `TargetResources`, `UserData`)[cite: 2]. |
| **Day 14** | 🧠 **Logic Structuring** | Advanced looping and blocks (`Dynamicblock`, `Forloop`)[cite: 2]. |
| **Day 15** | 🎛️ **Conditionals & Locals** | Logic control (`Condition_Count`, `Input.vars`, `Local`)[cite: 2]. |
| **Opentofu/** | 🟡 **Forks & Alternatives** | Examples specific to the OpenTofu fork[cite: 2]. |

### 3. 🛠️ Comprehensive Projects (`Terraform-Projects/`)
Put your skills to the test with these structured projects[cite: 2]:

*   **`Terraform-Miniproject/`**: A solid baseline project integrating user data scripts (`userdata.sh`) and multi-file structures[cite: 2].
*   **`Terraform-Modules-Project/`**: Demonstrates best practices in modularization. It includes dedicated modules for `ec2-module`, `s3-bkt-module`, and `vpc`[cite: 2].
*   **`Terraform-RDS-MiniProject/`**: Focused entirely on scalable relational database deployments[cite: 2].

---

## 🌳 Full Directory Tree

<details>
<summary><b>🔥 Click to expand the full, detailed repository structure</b></summary>

```txt
vaibhavingle2002/Complete-Teraaform-Practice.git 
📁 Complete-Teraaform-Practice.git/
├── 📄 .gitignore
├── 📄 README.md
├── 📁 Terraform-AWS/
│   └── 📁 Meta-Arguments/
│       ├── 📄 .terraform.lock.hcl
│       └── 📄 main.tf
├── 📁 Terraform-Data-Source/
│   ├── 📄 .terraform.lock.hcl
│   ├── 📄 backend.tf
│   ├── 📄 main.tf
│   ├── 📄 output.tf
│   └── 📄 provider.tf
├── 📁 Terraform-Practice/
│   ├── 📄 .gitignore
│   ├── 📁 Day-1/ to Day-15/
│   ├── 📁 Opentofu/
│   │   ├── 📄 main.tf
│   │   └── 📄 provider.tf
│   └── 📁 Terraform-VARIABLES/
│       └── 📄 main.tf
├── 📁 Terraform-Projects/
│   ├── 📁 Terraform-Miniproject/
│   │   ├── 📄 .terraform.lock.hcl
│   │   ├── 📄 backend.tf
│   │   ├── 📄 main.tf
│   │   ├── 📄 output.tf
│   │   ├── 📄 provider.tf
│   │   ├── 📄 userdata.sh
│   │   ├── 📄 userdata1.sh
│   │   └── 📄 variables.tf
│   ├── 📁 Terraform-Modules-Project/
│   │   ├── 📄 .terraform.lock.hcl
│   │   ├── 📄 backend.tf
│   │   ├── 📄 main.tf
│   │   ├── 📁 modules/
│   │   │   ├── 📁 ec2-module/
│   │   │   ├── 📁 s3-bkt-module/
│   │   │   └── 📁 vpc/
│   │   ├── 📄 provider.tf
│   │   └── 📄 variables.tf
│   └── 📁 Terraform-RDS-MiniProject/
└── 📄 index.html

⚙️ Setup & Deployment Guide
Before you start, make sure you have these tools installed and set up:

Terraform: You need version 1.x or higher. You can check your version by running terraform --version in your terminal.
AWS CLI: This command-line tool for Amazon Web Services needs to be installed and configured. Run aws configure in your terminal and enter your AWS access key ID, secret access key, default region, and default output format. Make sure you have the necessary permissions to manage AWS resources.
Getting Started Workflow
Follow these simple steps to get your project running:

Navigate to your project folder: Open your terminal and go to the directory where your Terraform project is located. For example:

cd Terraform-Projects/Terraform-Modules-Project
Initialize Terraform: This command downloads any necessary provider plugins for your project.

terraform init
Review the plan: See what changes Terraform will make to your AWS resources before applying them.

terraform plan
Apply the changes: This command provisions the resources in your AWS account.

terraform apply -auto-approve
Important: Remember to clean up the resources when you're done to avoid extra costs! Use this command:

terraform destroy -auto-approve
