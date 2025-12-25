# 🚀 Terraform AWS EC2 — Infrastructure as Code (IaC)

> **One command. Real AWS infrastructure. No manual console clicks.**

This repository demonstrates how to provision an **AWS EC2 instance using Terraform**, following **Infrastructure as Code (IaC)** principles.

Built as a **hands-on DevOps learning project** — simple, practical, and real.

---

## 🔥 Why This Repo Exists

Most beginners:
- ❌ Create resources manually in AWS Console
- ❌ Forget how they created them
- ❌ Can't reproduce infrastructure

This project shows:
- ✅ Infrastructure defined as code
- ✅ Version-controlled cloud resources
- ✅ Easy creation **and destruction**
- ✅ Real DevOps workflow

---

## 🧠 What This Creates

✔️ AWS EC2 Instance  
✔️ Security Group (SSH + HTTP)  
✔️ Tagged resources  
✔️ Public IP as output  
✔️ Full lifecycle management  

All done using **Terraform**.

---

## 🧱 Tech Stack

- **Terraform** — Infrastructure as Code tool
- **AWS EC2** — Compute resource
- **AWS Security Groups** — Network access control
- **IaC** — DevOps best practice

---

## 📁 Project Structure

```
terraform-aws-ec2-iac/
├── provider.tf      # AWS provider configuration
├── versions.tf      # Terraform version requirements
├── variables.tf     # Input variables
├── main.tf          # Resource definitions
├── outputs.tf       # Output values
├── .gitignore       # Git ignore rules
└── LICENSE
```

---

## 🔐 Setup: Add AWS Credentials

⚠️ **Important:** This repo does NOT contain AWS keys.

Create `terraform.tfvars` locally (not pushed to Git):

```hcl
aws_region = "ap-south-1"

aws_access_key        = "YOUR_AWS_ACCESS_KEY"
aws_secret_access_key = "YOUR_AWS_SECRET_KEY"

instance_type = "t2.micro"
key_name      = "your-existing-keypair"
```

**Notes:**
- Keys are never pushed to GitHub
- `terraform.tfvars` is in `.gitignore`
- Replace with your own AWS credentials

---

## ▶️ Run Terraform (4 Commands)

### 1️⃣ Initialize Terraform

```bash
terraform init
```

Downloads provider plugins and prepares your directory.

---

### 2️⃣ Preview Infrastructure

```bash
terraform plan
```

Shows **exactly** what Terraform will create. Always review this.

---

### 3️⃣ Create Infrastructure

```bash
terraform apply
```

Creates your EC2 instance on AWS. Type `yes` when prompted.

---

### 4️⃣ Get Output (Public IP)

```bash
terraform output
```

Shows your instance's public IP address.

🎉 **Your EC2 instance is running on AWS.**

---

## 🧹 Cleanup (Important!)

To stop AWS charges:

```bash
terraform destroy
```

Removes everything Terraform created. Type `yes` to confirm.

---

## 🎯 What You'll Learn

✅ Terraform workflow: `init` → `plan` → `apply` → `destroy`  
✅ Infrastructure as Code fundamentals  
✅ Secure credential management  
✅ AWS EC2 & Security Groups  
✅ Real DevOps automation mindset  

---

## 💡 Next Steps

- Modify `variables.tf` to customize instance size
- Add more resources (RDS, Load Balancer)
- Use `terraform fmt` to format code
- Explore `terraform state` to understand state management

---

## 🤝 Let's Connect

If this helped you:

- ⭐ Star the repository
- 💬 Share feedback
- 🔗 Connect on LinkedIn

Learning DevOps by building 🚀