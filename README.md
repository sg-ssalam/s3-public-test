# Terraform Infrastructure Setup

This repository contains Terraform configuration files for provisioning and managing infrastructure resources.  
It also includes a visual architecture diagram (`diagram.drawio`) for better understanding of the setup.

---

## 📘 Overview

- **Infrastructure as Code (IaC)** using Terraform  
- **Automated workflow** with GitHub Actions (`.github/workflows/terraform.yml`)  
- **Architecture diagram** created with Draw.io for visual reference

---

## 🧩 Repository Structure

| Path | Description |
|------|--------------|
| `.github/workflows/terraform.yml` | CI/CD pipeline for Terraform plan and apply |
| `main.tf` | Main Terraform configuration file |
| `diagram.drawio` | Draw.io architecture diagram |
| `README.md` | Project documentation |

---

## 🖼️ Architecture Diagram

![Organisation Architecture Diagram](./diagram.svg)

> **Note:**  
> GitHub does not render `.drawio` files directly.  
> You can view or edit this diagram in **diagrams.net** using the link below:

[🟦 Open in diagrams.net](https://app.diagrams.net/?url=https://raw.githubusercontent.com/sg-ssalam/s3-public-test/main/diagram.drawio)

## 🖼️ Management Architecture Diagram

![Organisation Architecture Diagram](./diagram.drawio.svg

> **Note:**  
> GitHub does not render `.drawio` files directly.  
> You can view or edit this diagram in **diagrams.net** using the link below:

[🟦 Open in diagrams.net](https://app.diagrams.net/?url=https://raw.githubusercontent.com/sg-ssalam/s3-public-test/main/diagram.drawio)

---

## ⚙️ Terraform Workflow

The GitHub Actions workflow (`terraform.yml`) automates:
1. **Initialization** – `terraform init`
2. **Validation** – `terraform validate`
3. **Plan generation** – `terraform plan`
4. **Apply (optional)** – automatic apply on main branch or with approval

This ensures consistent, version-controlled infrastructure changes.

---

## 🚀 Usage

1. **Clone the repository**
   ```bash
   git clone https://github.com/sg-ssalam/REPO-NAME.git
   cd REPO-NAME
