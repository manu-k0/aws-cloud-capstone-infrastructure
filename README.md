# AWS Cloud Capstone Infrastructure

A production-ready Infrastructure as Code (IaC) repository that automates the deployment of a secure, highly available cloud environment on AWS using **Terraform** and establishes a containerized baseline via **Docker**.

## 🚀 Project Overview
This project demonstrates modern DevOps methodologies by shifting manual cloud configurations into declarative, version-controlled code. It establishes a custom Virtual Private Cloud (VPC) isolated environment, provisions public tiers for external-facing traffic, configures granular security access controls, and deploys an immutable containerized web gateway instance.

## 🛠️ Tech Stack & Architecture
*   **Cloud Provider:** Amazon Web Services (AWS)
*   **Infrastructure as Code:** Terraform 
*   **Containerization:** Docker
*   **Base OS:** Ubuntu 22.04 LTS

### Architectural Flow:
1.  **VPC Layout:** A dedicated `10.0.0.0/16` network isolated from the default AWS tenancy.
2.  **Public Tier:** A public subnet (`10.0.1.0/24`) attached to an Internet Gateway (`IGW`) to handle inbound routing.
3.  **Security Enclosure:** A multi-layered Stateful Security Group restricting all incoming traffic except essential HTTP (Port 80) and secure administrative SSH (Port 22).
4.  **Compute Engine:** An automated EC2 instance running containerized layers.

---

## 📂 File Architecture & Details

### 1. `main.tf` (Terraform Blueprint)
Automates the lifecycle of the cloud resources. By defining the infrastructure programmatically, it eliminates configuration drift and allows for identical environment replication (Dev/Stage/Prod) in minutes.

### 2. `Dockerfile` (Container Optimization)
Constructs a hardened, alpine-based production Nginx web container wrapper. It utilizes multi-stage metadata labeling and builds an isolated configuration structure to handle edge web traffic efficiently.

---

## ⚙️ How To Deploy This Infrastructure

### Prerequisites
*   AWS CLI configured with appropriate IAM administrative credentials.
*   Terraform CLI installed locally.
*   Docker Desktop / Daemon installed.

### Step 1: Initialize Terraform
Download the required AWS provider plug-ins and initialize the backend state:
```bash
terraform init
